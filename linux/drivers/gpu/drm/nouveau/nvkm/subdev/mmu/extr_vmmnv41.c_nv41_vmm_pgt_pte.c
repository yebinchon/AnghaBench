
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int u32 ;
struct nvkm_vmm_map {int dummy; } ;
struct nvkm_vmm {int dummy; } ;
struct nvkm_mmu_pt {int dummy; } ;


 int VMM_WO032 (struct nvkm_mmu_pt*,struct nvkm_vmm*,int,int) ;

__attribute__((used)) static void
nv41_vmm_pgt_pte(struct nvkm_vmm *vmm, struct nvkm_mmu_pt *pt,
   u32 ptei, u32 ptes, struct nvkm_vmm_map *map, u64 addr)
{
 u32 data = (addr >> 7) | 0x00000001;
 while (ptes--) {
  VMM_WO032(pt, vmm, ptei++ * 4, data);
  data += 0x00000020;
 }
}
