
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dev; } ;
struct edac_device_ctl_info {struct altr_edac_device_dev* pvt_info; } ;
struct altr_edac_device_dev {int debugfs_dir; } ;


 int debugfs_remove_recursive (int ) ;
 int edac_device_del_device (int *) ;
 int edac_device_free_ctl_info (struct edac_device_ctl_info*) ;
 struct edac_device_ctl_info* platform_get_drvdata (struct platform_device*) ;

__attribute__((used)) static int altr_edac_device_remove(struct platform_device *pdev)
{
 struct edac_device_ctl_info *dci = platform_get_drvdata(pdev);
 struct altr_edac_device_dev *drvdata = dci->pvt_info;

 debugfs_remove_recursive(drvdata->debugfs_dir);
 edac_device_del_device(&pdev->dev);
 edac_device_free_ctl_info(dci);

 return 0;
}
