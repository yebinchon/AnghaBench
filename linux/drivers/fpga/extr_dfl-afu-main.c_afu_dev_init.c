
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dev; } ;
struct dfl_feature_platform_data {int lock; } ;
struct dfl_afu {struct dfl_feature_platform_data* pdata; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int afu_dma_region_init (struct dfl_feature_platform_data*) ;
 int afu_mmio_region_init (struct dfl_feature_platform_data*) ;
 struct dfl_feature_platform_data* dev_get_platdata (int *) ;
 struct dfl_afu* devm_kzalloc (int *,int,int ) ;
 int dfl_fpga_pdata_set_private (struct dfl_feature_platform_data*,struct dfl_afu*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static int afu_dev_init(struct platform_device *pdev)
{
 struct dfl_feature_platform_data *pdata = dev_get_platdata(&pdev->dev);
 struct dfl_afu *afu;

 afu = devm_kzalloc(&pdev->dev, sizeof(*afu), GFP_KERNEL);
 if (!afu)
  return -ENOMEM;

 afu->pdata = pdata;

 mutex_lock(&pdata->lock);
 dfl_fpga_pdata_set_private(pdata, afu);
 afu_mmio_region_init(pdata);
 afu_dma_region_init(pdata);
 mutex_unlock(&pdata->lock);

 return 0;
}
