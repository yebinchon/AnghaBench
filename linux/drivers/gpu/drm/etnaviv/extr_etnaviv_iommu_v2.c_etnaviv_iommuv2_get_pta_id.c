
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct etnaviv_iommuv2_context {unsigned short id; } ;
struct etnaviv_iommu_context {int dummy; } ;


 struct etnaviv_iommuv2_context* to_v2_context (struct etnaviv_iommu_context*) ;

unsigned short etnaviv_iommuv2_get_pta_id(struct etnaviv_iommu_context *context)
{
 struct etnaviv_iommuv2_context *v2_context = to_v2_context(context);

 return v2_context->id;
}
