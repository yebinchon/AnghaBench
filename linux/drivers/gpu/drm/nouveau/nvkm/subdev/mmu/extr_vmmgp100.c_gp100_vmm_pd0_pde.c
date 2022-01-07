
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef size_t u32 ;
struct nvkm_vmm_pt {struct nvkm_mmu_pt** pt; struct nvkm_vmm_pt** pde; } ;
struct nvkm_vmm {int dummy; } ;
struct nvkm_mmu_pt {int memory; } ;


 int VMM_WO128 (struct nvkm_mmu_pt*,struct nvkm_vmm*,size_t,int ,int ) ;
 int gp100_vmm_pde (struct nvkm_mmu_pt*,int *) ;
 int nvkm_done (int ) ;
 int nvkm_kmap (int ) ;

__attribute__((used)) static void
gp100_vmm_pd0_pde(struct nvkm_vmm *vmm, struct nvkm_vmm_pt *pgd, u32 pdei)
{
 struct nvkm_vmm_pt *pgt = pgd->pde[pdei];
 struct nvkm_mmu_pt *pd = pgd->pt[0];
 u64 data[2] = {};

 if (pgt->pt[0] && !gp100_vmm_pde(pgt->pt[0], &data[0]))
  return;
 if (pgt->pt[1] && !gp100_vmm_pde(pgt->pt[1], &data[1]))
  return;

 nvkm_kmap(pd->memory);
 VMM_WO128(pd, vmm, pdei * 0x10, data[0], data[1]);
 nvkm_done(pd->memory);
}
