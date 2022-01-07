
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct etnaviv_vram_mapping {int dummy; } ;
struct etnaviv_iommu_context {int dummy; } ;


 int etnaviv_iommu_put_suballoc_va (struct etnaviv_iommu_context*,struct etnaviv_vram_mapping*) ;

void etnaviv_cmdbuf_suballoc_unmap(struct etnaviv_iommu_context *context,
       struct etnaviv_vram_mapping *mapping)
{
 etnaviv_iommu_put_suballoc_va(context, mapping);
}
