
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dev; } ;
struct dfl_fme {int dummy; } ;
struct dfl_feature_platform_data {int lock; } ;


 struct dfl_feature_platform_data* dev_get_platdata (int *) ;
 struct dfl_fme* dfl_fpga_pdata_get_private (struct dfl_feature_platform_data*) ;
 int dfl_fpga_pdata_set_private (struct dfl_feature_platform_data*,int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static void fme_dev_destroy(struct platform_device *pdev)
{
 struct dfl_feature_platform_data *pdata = dev_get_platdata(&pdev->dev);
 struct dfl_fme *fme;

 mutex_lock(&pdata->lock);
 fme = dfl_fpga_pdata_get_private(pdata);
 dfl_fpga_pdata_set_private(pdata, ((void*)0));
 mutex_unlock(&pdata->lock);
}
