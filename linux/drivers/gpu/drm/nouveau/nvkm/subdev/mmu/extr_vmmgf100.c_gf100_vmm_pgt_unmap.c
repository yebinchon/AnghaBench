
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct nvkm_vmm {int dummy; } ;
struct nvkm_mmu_pt {int dummy; } ;


 int VMM_FO064 (struct nvkm_mmu_pt*,struct nvkm_vmm*,int,unsigned long long,int) ;

void
gf100_vmm_pgt_unmap(struct nvkm_vmm *vmm,
      struct nvkm_mmu_pt *pt, u32 ptei, u32 ptes)
{
 VMM_FO064(pt, vmm, ptei * 8, 0ULL, ptes);
}
