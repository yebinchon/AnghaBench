
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dev; } ;
struct edac_device_ctl_info {int dummy; } ;


 int edac_dbg (int ,char*) ;
 int edac_device_del_device (int *) ;
 int edac_device_free_ctl_info (struct edac_device_ctl_info*) ;
 struct edac_device_ctl_info* platform_get_drvdata (struct platform_device*) ;

__attribute__((used)) static int mv64x60_cpu_err_remove(struct platform_device *pdev)
{
 struct edac_device_ctl_info *edac_dev = platform_get_drvdata(pdev);

 edac_dbg(0, "\n");

 edac_device_del_device(&pdev->dev);
 edac_device_free_ctl_info(edac_dev);
 return 0;
}
