
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dev; } ;
struct dfl_feature_platform_data {int lock; } ;
struct dfl_afu {int dummy; } ;


 int afu_dma_region_destroy (struct dfl_feature_platform_data*) ;
 int afu_mmio_region_destroy (struct dfl_feature_platform_data*) ;
 struct dfl_feature_platform_data* dev_get_platdata (int *) ;
 struct dfl_afu* dfl_fpga_pdata_get_private (struct dfl_feature_platform_data*) ;
 int dfl_fpga_pdata_set_private (struct dfl_feature_platform_data*,int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static int afu_dev_destroy(struct platform_device *pdev)
{
 struct dfl_feature_platform_data *pdata = dev_get_platdata(&pdev->dev);
 struct dfl_afu *afu;

 mutex_lock(&pdata->lock);
 afu = dfl_fpga_pdata_get_private(pdata);
 afu_mmio_region_destroy(pdata);
 afu_dma_region_destroy(pdata);
 dfl_fpga_pdata_set_private(pdata, ((void*)0));
 mutex_unlock(&pdata->lock);

 return 0;
}
