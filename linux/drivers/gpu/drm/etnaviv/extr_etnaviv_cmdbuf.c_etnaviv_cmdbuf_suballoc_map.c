
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct etnaviv_vram_mapping {int dummy; } ;
struct etnaviv_iommu_context {int dummy; } ;
struct etnaviv_cmdbuf_suballoc {int paddr; } ;


 int SUBALLOC_SIZE ;
 int etnaviv_iommu_get_suballoc_va (struct etnaviv_iommu_context*,struct etnaviv_vram_mapping*,int ,int ,int ) ;

int etnaviv_cmdbuf_suballoc_map(struct etnaviv_cmdbuf_suballoc *suballoc,
    struct etnaviv_iommu_context *context,
    struct etnaviv_vram_mapping *mapping,
    u32 memory_base)
{
 return etnaviv_iommu_get_suballoc_va(context, mapping, memory_base,
          suballoc->paddr, SUBALLOC_SIZE);
}
