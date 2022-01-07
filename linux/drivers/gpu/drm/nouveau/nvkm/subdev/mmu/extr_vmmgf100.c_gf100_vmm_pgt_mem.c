
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct nvkm_vmm_map {int dummy; } ;
struct nvkm_vmm {int dummy; } ;
struct nvkm_mmu_pt {int dummy; } ;


 int VMM_MAP_ITER_MEM (struct nvkm_vmm*,struct nvkm_mmu_pt*,int ,int ,struct nvkm_vmm_map*,int ) ;
 int gf100_vmm_pgt_pte ;

void
gf100_vmm_pgt_mem(struct nvkm_vmm *vmm, struct nvkm_mmu_pt *pt,
    u32 ptei, u32 ptes, struct nvkm_vmm_map *map)
{
 VMM_MAP_ITER_MEM(vmm, pt, ptei, ptes, map, gf100_vmm_pgt_pte);
}
