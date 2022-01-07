
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct dfl_feature_platform_data {int dummy; } ;
struct dfl_afu_dma_region {int dummy; } ;


 struct dfl_afu_dma_region* afu_dma_region_find (struct dfl_feature_platform_data*,int ,int ) ;

__attribute__((used)) static struct dfl_afu_dma_region *
afu_dma_region_find_iova(struct dfl_feature_platform_data *pdata, u64 iova)
{
 return afu_dma_region_find(pdata, iova, 0);
}
