
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dev; } ;


 int mfd_remove_devices (int *) ;
 int zynqmp_pm_api_debugfs_exit () ;

__attribute__((used)) static int zynqmp_firmware_remove(struct platform_device *pdev)
{
 mfd_remove_devices(&pdev->dev);
 zynqmp_pm_api_debugfs_exit();

 return 0;
}
