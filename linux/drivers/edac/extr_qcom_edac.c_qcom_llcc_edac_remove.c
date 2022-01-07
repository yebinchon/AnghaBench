
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dev; } ;
struct edac_device_ctl_info {int dev; } ;


 struct edac_device_ctl_info* dev_get_drvdata (int *) ;
 int edac_device_del_device (int ) ;
 int edac_device_free_ctl_info (struct edac_device_ctl_info*) ;

__attribute__((used)) static int qcom_llcc_edac_remove(struct platform_device *pdev)
{
 struct edac_device_ctl_info *edev_ctl = dev_get_drvdata(&pdev->dev);

 edac_device_del_device(edev_ctl->dev);
 edac_device_free_ctl_info(edev_ctl);

 return 0;
}
