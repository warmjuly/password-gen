 Function GeneratePassword {
        $PasswordLength = 8
        $AllowedPasswordCharacters = [char[]]'abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789!?@#£$%^&'
        $Regex = "(?=.*\d)(?=.*[a-z])(?=.*[A-Z])(?=.*\W)"

    do {
            $Password = ([string]($AllowedPasswordCharacters |
            Get-Random -Count $PasswordLength) -replace ' ')
       }    until ($Password -cmatch $Regex)

    $Password

 }