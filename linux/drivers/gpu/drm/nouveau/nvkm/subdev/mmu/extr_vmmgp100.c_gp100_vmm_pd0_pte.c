
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int u32 ;
struct nvkm_vmm_map {int type; int ctag; scalar_t__ next; } ;
struct nvkm_vmm {int dummy; } ;
struct nvkm_mmu_pt {int dummy; } ;


 int VMM_WO128 (struct nvkm_mmu_pt*,struct nvkm_vmm*,int,int,unsigned long long) ;

__attribute__((used)) static inline void
gp100_vmm_pd0_pte(struct nvkm_vmm *vmm, struct nvkm_mmu_pt *pt,
    u32 ptei, u32 ptes, struct nvkm_vmm_map *map, u64 addr)
{
 u64 data = (addr >> 4) | map->type;

 map->type += ptes * map->ctag;

 while (ptes--) {
  VMM_WO128(pt, vmm, ptei++ * 0x10, data, 0ULL);
  data += map->next;
 }
}
