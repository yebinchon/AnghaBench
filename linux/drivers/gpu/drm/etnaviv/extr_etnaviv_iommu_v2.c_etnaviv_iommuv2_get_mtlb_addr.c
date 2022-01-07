
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct etnaviv_iommuv2_context {int mtlb_dma; } ;
struct etnaviv_iommu_context {int dummy; } ;


 struct etnaviv_iommuv2_context* to_v2_context (struct etnaviv_iommu_context*) ;

u32 etnaviv_iommuv2_get_mtlb_addr(struct etnaviv_iommu_context *context)
{
 struct etnaviv_iommuv2_context *v2_context = to_v2_context(context);

 return v2_context->mtlb_dma;
}
