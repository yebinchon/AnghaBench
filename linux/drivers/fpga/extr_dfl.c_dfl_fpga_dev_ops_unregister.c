
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dev; } ;
struct dfl_feature_platform_data {int cdev; } ;


 int cdev_del (int *) ;
 struct dfl_feature_platform_data* dev_get_platdata (int *) ;

void dfl_fpga_dev_ops_unregister(struct platform_device *pdev)
{
 struct dfl_feature_platform_data *pdata = dev_get_platdata(&pdev->dev);

 cdev_del(&pdata->cdev);
}
