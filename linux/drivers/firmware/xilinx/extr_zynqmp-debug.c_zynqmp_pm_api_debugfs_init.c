
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int debugfs_create_dir (char*,int *) ;
 int debugfs_create_file (char*,int,int ,int *,int *) ;
 int firmware_debugfs_root ;
 int fops_zynqmp_pm_dbgfs ;

void zynqmp_pm_api_debugfs_init(void)
{

 firmware_debugfs_root = debugfs_create_dir("zynqmp-firmware", ((void*)0));
 debugfs_create_file("pm", 0660, firmware_debugfs_root, ((void*)0),
       &fops_zynqmp_pm_dbgfs);
}
