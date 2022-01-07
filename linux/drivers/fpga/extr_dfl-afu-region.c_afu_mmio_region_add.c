
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef void* u64 ;
typedef void* u32 ;
struct dfl_feature_platform_data {TYPE_1__* dev; int lock; } ;
struct dfl_afu_mmio_region {int node; int offset; void* flags; void* phys; void* size; void* index; } ;
struct dfl_afu {int num_regions; int region_cur_offset; int regions; } ;
struct TYPE_2__ {int dev; } ;


 int EEXIST ;
 int ENOMEM ;
 int GFP_KERNEL ;
 void* PAGE_ALIGN (void*) ;
 int devm_kfree (int *,struct dfl_afu_mmio_region*) ;
 struct dfl_afu_mmio_region* devm_kzalloc (int *,int,int ) ;
 struct dfl_afu* dfl_fpga_pdata_get_private (struct dfl_feature_platform_data*) ;
 scalar_t__ get_region_by_index (struct dfl_afu*,void*) ;
 int list_add (int *,int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

int afu_mmio_region_add(struct dfl_feature_platform_data *pdata,
   u32 region_index, u64 region_size, u64 phys, u32 flags)
{
 struct dfl_afu_mmio_region *region;
 struct dfl_afu *afu;
 int ret = 0;

 region = devm_kzalloc(&pdata->dev->dev, sizeof(*region), GFP_KERNEL);
 if (!region)
  return -ENOMEM;

 region->index = region_index;
 region->size = region_size;
 region->phys = phys;
 region->flags = flags;

 mutex_lock(&pdata->lock);

 afu = dfl_fpga_pdata_get_private(pdata);


 if (get_region_by_index(afu, region_index)) {
  mutex_unlock(&pdata->lock);
  ret = -EEXIST;
  goto exit;
 }

 region_size = PAGE_ALIGN(region_size);
 region->offset = afu->region_cur_offset;
 list_add(&region->node, &afu->regions);

 afu->region_cur_offset += region_size;
 afu->num_regions++;
 mutex_unlock(&pdata->lock);

 return 0;

exit:
 devm_kfree(&pdata->dev->dev, region);
 return ret;
}
