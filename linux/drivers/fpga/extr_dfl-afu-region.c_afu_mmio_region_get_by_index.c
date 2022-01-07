
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct dfl_feature_platform_data {int lock; } ;
struct dfl_afu_mmio_region {int dummy; } ;
struct dfl_afu {int dummy; } ;


 int EINVAL ;
 struct dfl_afu* dfl_fpga_pdata_get_private (struct dfl_feature_platform_data*) ;
 struct dfl_afu_mmio_region* get_region_by_index (struct dfl_afu*,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

int afu_mmio_region_get_by_index(struct dfl_feature_platform_data *pdata,
     u32 region_index,
     struct dfl_afu_mmio_region *pregion)
{
 struct dfl_afu_mmio_region *region;
 struct dfl_afu *afu;
 int ret = 0;

 mutex_lock(&pdata->lock);
 afu = dfl_fpga_pdata_get_private(pdata);
 region = get_region_by_index(afu, region_index);
 if (!region) {
  ret = -EINVAL;
  goto exit;
 }
 *pregion = *region;
exit:
 mutex_unlock(&pdata->lock);
 return ret;
}
