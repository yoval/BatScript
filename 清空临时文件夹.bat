rem 清空历史文件夹
@echo off
chcp 65001
setlocal enabledelayedexpansion

set "src_folder=C:\Users\Administrator\OneDrive\甜啦啦\临时文件夹\各渠道"
set "dst_folder=C:\Users\Administrator\Documents\BaiduSyncdisk\historical_documents"

if not exist "%dst_folder%" (
    mkdir "%dst_folder%"
)

for %%i in ("%src_folder%\*") do (
    move "%%i" "%dst_folder%"
)

echo 所有文件已从 %src_folder% 移动到 %dst_folder%.
pause