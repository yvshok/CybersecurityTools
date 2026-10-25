$ErrorActionPreference = "Stop"
$OutputDirectory = "C:\Tools"

# Microsoft Windows Tools
$LIST_OF_TOOLS = @(
  "https://www.nirsoft.net/utils/lastactivityview.zip",
  "https://www.nirsoft.net/utils/fulleventlogview-x64.zip",
  "https://www.nirsoft.net/utils/networktrafficview-x64.zip",
  "https://www.nirsoft.net/utils/dhcplogview-x64.zip",
  "https://www.nirsoft.net/utils/credhistview.zip",
  "https://www.nirsoft.net/utils/tcplogview-x64.zip",
  "https://www.nirsoft.net/utils/dnslookupview.zip",
  "https://www.nirsoft.net/utils/browsinghistoryview-x64.zip"

  "https://download.sysinternals.com/files/ProcessExplorer.zip",
  "https://download.sysinternals.com/files/ProcessMonitor.zip",
  "https://download.sysinternals.com/files/Autoruns.zip",
  "https://download.sysinternals.com/files/PSTools.zip",
  "https://download.sysinternals.com/files/Sysmon.zip",
  "https://download.sysinternals.com/files/ProcDump.zip",
  "https://download.sysinternals.com/files/Strings.zip"
)

Write-Host "Downloading tools, wait for this..."
foreach ($URL in $LIST_OF_TOOLS) {
  Invoke-WebRequest -Uri $URL -OutFile (Join-Path $OutputDirectory (Split-Path $URL -Leaf))
}
