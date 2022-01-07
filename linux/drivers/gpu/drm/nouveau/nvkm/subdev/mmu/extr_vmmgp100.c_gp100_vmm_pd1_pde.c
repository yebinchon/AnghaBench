
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef size_t u32 ;
struct nvkm_vmm_pt {struct nvkm_mmu_pt** pt; struct nvkm_vmm_pt** pde; } ;
struct nvkm_vmm {int dummy; } ;
struct nvkm_mmu_pt {int memory; } ;


 int VMM_WO064 (struct nvkm_mmu_pt*,struct nvkm_vmm*,size_t,int ) ;
 int gp100_vmm_pde (struct nvkm_mmu_pt*,int *) ;
 int nvkm_done (int ) ;
 int nvkm_kmap (int ) ;

__attribute__((used)) static void
gp100_vmm_pd1_pde(struct nvkm_vmm *vmm, struct nvkm_vmm_pt *pgd, u32 pdei)
{
 struct nvkm_vmm_pt *pgt = pgd->pde[pdei];
 struct nvkm_mmu_pt *pd = pgd->pt[0];
 u64 data = 0;

 if (!gp100_vmm_pde(pgt->pt[0], &data))
  return;

 nvkm_kmap(pd->memory);
 VMM_WO064(pd, vmm, pdei * 8, data);
 nvkm_done(pd->memory);
}
