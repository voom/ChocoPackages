﻿$ErrorActionPreference = 'Stop'

$packageArgs = @{
    packageName   = $env:ChocolateyPackageName
    fileType      = 'EXE'
    url           = 'https://adedownload.adobe.com/pub/adobe/digitaleditions/ADE_4.5_Installer.exe'
    checksum      = 'a97e536236e88f225551262fb36230a3effbbe0c83890fac28e6ce1bfcfe9ebf'
    checksumType  = 'SHA256'

    silentArgs   = '/S'
    # Note code 1223 is added as valid for v4.5.5 as it exits with this code but appears to install correctly
    # see https://forums.adobe.com/thread/2345991
    validExitCodes= @(0, 1223)
}

Install-ChocolateyPackage @packageArgs
