
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct dfl_feature_platform_data {int lock; } ;
struct dfl_afu_dma_region {int length; int iova; scalar_t__ in_use; } ;


 int DMA_BIDIRECTIONAL ;
 int EBUSY ;
 int EINVAL ;
 struct dfl_afu_dma_region* afu_dma_region_find_iova (struct dfl_feature_platform_data*,int ) ;
 int afu_dma_region_remove (struct dfl_feature_platform_data*,struct dfl_afu_dma_region*) ;
 int afu_dma_unpin_pages (struct dfl_feature_platform_data*,struct dfl_afu_dma_region*) ;
 int dfl_fpga_pdata_to_parent (struct dfl_feature_platform_data*) ;
 int dma_unmap_page (int ,int ,int ,int ) ;
 int kfree (struct dfl_afu_dma_region*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

int afu_dma_unmap_region(struct dfl_feature_platform_data *pdata, u64 iova)
{
 struct dfl_afu_dma_region *region;

 mutex_lock(&pdata->lock);
 region = afu_dma_region_find_iova(pdata, iova);
 if (!region) {
  mutex_unlock(&pdata->lock);
  return -EINVAL;
 }

 if (region->in_use) {
  mutex_unlock(&pdata->lock);
  return -EBUSY;
 }

 afu_dma_region_remove(pdata, region);
 mutex_unlock(&pdata->lock);

 dma_unmap_page(dfl_fpga_pdata_to_parent(pdata),
         region->iova, region->length, DMA_BIDIRECTIONAL);
 afu_dma_unpin_pages(pdata, region);
 kfree(region);

 return 0;
}
