
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct dfl_feature_platform_data {TYPE_1__* dev; } ;
struct dfl_afu_dma_region {int node; scalar_t__ iova; } ;
struct dfl_afu {int dma_regions; } ;
struct TYPE_2__ {int dev; } ;


 int dev_dbg (int *,char*,unsigned long long) ;
 struct dfl_afu* dfl_fpga_pdata_get_private (struct dfl_feature_platform_data*) ;
 int rb_erase (int *,int *) ;

__attribute__((used)) static void afu_dma_region_remove(struct dfl_feature_platform_data *pdata,
      struct dfl_afu_dma_region *region)
{
 struct dfl_afu *afu;

 dev_dbg(&pdata->dev->dev, "del region (iova = %llx)\n",
  (unsigned long long)region->iova);

 afu = dfl_fpga_pdata_get_private(pdata);
 rb_erase(&region->node, &afu->dma_regions);
}
