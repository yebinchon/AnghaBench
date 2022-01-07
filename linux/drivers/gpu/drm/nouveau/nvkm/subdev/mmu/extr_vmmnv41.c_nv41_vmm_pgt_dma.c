
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct nvkm_vmm_map {int dma; } ;
struct nvkm_vmm {int dummy; } ;
struct nvkm_mmu_pt {int memory; } ;


 int VMM_MAP_ITER_DMA (struct nvkm_vmm*,struct nvkm_mmu_pt*,int,int,struct nvkm_vmm_map*,int ) ;
 int VMM_WO032 (struct nvkm_mmu_pt*,struct nvkm_vmm*,int,int const) ;
 int nv41_vmm_pgt_pte ;
 int nvkm_done (int ) ;
 int nvkm_kmap (int ) ;

__attribute__((used)) static void
nv41_vmm_pgt_dma(struct nvkm_vmm *vmm, struct nvkm_mmu_pt *pt,
   u32 ptei, u32 ptes, struct nvkm_vmm_map *map)
{
 VMM_MAP_ITER_DMA(vmm, pt, ptei, ptes, map, nv41_vmm_pgt_pte);

}
