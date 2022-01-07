
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct nvkm_vmm {int dummy; } ;
struct nvkm_mmu_pt {int memory; } ;


 int VMM_WO032 (struct nvkm_mmu_pt*,struct nvkm_vmm*,int,int) ;
 int min (int,int) ;
 int nv44_vmm_pgt_fill (struct nvkm_vmm*,struct nvkm_mmu_pt*,int *,int,int const) ;
 int nvkm_done (int ) ;
 int nvkm_kmap (int ) ;

__attribute__((used)) static void
nv44_vmm_pgt_unmap(struct nvkm_vmm *vmm,
     struct nvkm_mmu_pt *pt, u32 ptei, u32 ptes)
{
 nvkm_kmap(pt->memory);
 if (ptei & 3) {
  const u32 pten = min(ptes, 4 - (ptei & 3));
  nv44_vmm_pgt_fill(vmm, pt, ((void*)0), ptei, pten);
  ptei += pten;
  ptes -= pten;
 }

 while (ptes > 4) {
  VMM_WO032(pt, vmm, ptei++ * 4, 0x00000000);
  VMM_WO032(pt, vmm, ptei++ * 4, 0x00000000);
  VMM_WO032(pt, vmm, ptei++ * 4, 0x00000000);
  VMM_WO032(pt, vmm, ptei++ * 4, 0x00000000);
  ptes -= 4;
 }

 if (ptes)
  nv44_vmm_pgt_fill(vmm, pt, ((void*)0), ptei, ptes);
 nvkm_done(pt->memory);
}
