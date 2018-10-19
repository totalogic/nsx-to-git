Import-Module PowerNSX
 
 $cred_nsx     = (Import-Clixml -Path C:\Users\EricoCardelli\Downloads\development\nsx-to-git-output\cred-nsx.xml)
 $cred_vcenter = (Import-Clixml -Path c:\Users\EricoCardelli\Downloads\development\nsx-to-git-output\cred-vcenter.xml)
  
  Connect-NsxServer -NsxServer nsxmanager.sjc.hawest.local -Credential $cred_nsx -VICredential $cred_vcenter
   
    
    C:\Users\EricoCardelli\Downloads\development\nsx-to-git-output\nsx-to-git.ps1 -GitBinary "C:\Program Files\Git\bin\git.exe" -GitRepoPath C:\Users\EricoCardelli\Downloads\development\nsx-to-git-output\
