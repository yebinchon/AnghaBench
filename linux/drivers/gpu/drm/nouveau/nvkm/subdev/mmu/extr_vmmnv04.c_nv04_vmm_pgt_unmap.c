
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct nvkm_vmm {int dummy; } ;
struct nvkm_mmu_pt {int dummy; } ;


 int VMM_FO032 (struct nvkm_mmu_pt*,struct nvkm_vmm*,int,int ,int) ;

__attribute__((used)) static void
nv04_vmm_pgt_unmap(struct nvkm_vmm *vmm,
     struct nvkm_mmu_pt *pt, u32 ptei, u32 ptes)
{
 VMM_FO032(pt, vmm, 8 + (ptei * 4), 0, ptes);
}
