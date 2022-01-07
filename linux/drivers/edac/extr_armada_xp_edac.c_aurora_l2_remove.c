
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dev; } ;
struct edac_device_ctl_info {struct aurora_l2_drvdata* pvt_info; } ;
struct aurora_l2_drvdata {int debugfs; } ;


 int edac_debugfs_remove_recursive (int ) ;
 int edac_device_del_device (int *) ;
 int edac_device_free_ctl_info (struct edac_device_ctl_info*) ;
 struct edac_device_ctl_info* platform_get_drvdata (struct platform_device*) ;
 int platform_set_drvdata (struct platform_device*,int *) ;

__attribute__((used)) static int aurora_l2_remove(struct platform_device *pdev)
{
 struct edac_device_ctl_info *dci = platform_get_drvdata(pdev);





 edac_device_del_device(&pdev->dev);
 edac_device_free_ctl_info(dci);
 platform_set_drvdata(pdev, ((void*)0));

 return 0;
}
