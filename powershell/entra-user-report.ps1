Connect-MgGraph -Scopes User.Read.All

Get-MgUser |
Select-Object DisplayName,
              UserPrincipalName,
              Department,
              JobTitle,
              AccountEnabled |
Export-Csv ".\entra-users.csv" -NoTypeInformation

Write-Host "Report generated."