
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int debugfs_remove_recursive (int ) ;
 int firmware_debugfs_root ;

void zynqmp_pm_api_debugfs_exit(void)
{
 debugfs_remove_recursive(firmware_debugfs_root);
}
