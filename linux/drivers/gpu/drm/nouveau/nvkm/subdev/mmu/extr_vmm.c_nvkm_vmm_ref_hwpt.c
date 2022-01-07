
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t u32 ;
struct nvkm_vmm_pt {int* pte; scalar_t__ sparse; scalar_t__* refs; struct nvkm_mmu_pt** pt; struct nvkm_vmm_pt** pde; } ;
struct nvkm_vmm_iter {int lvl; struct nvkm_vmm* vmm; struct nvkm_vmm_desc* desc; } ;
struct nvkm_vmm_desc {int bits; size_t size; TYPE_1__* func; int type; int align; } ;
struct nvkm_vmm {struct nvkm_mmu* mmu; } ;
struct nvkm_mmu_pt {int dummy; } ;
struct nvkm_mmu {int dummy; } ;
struct TYPE_2__ {int (* pde ) (struct nvkm_vmm*,struct nvkm_vmm_pt*,size_t) ;int (* invalid ) (struct nvkm_vmm*,struct nvkm_mmu_pt*,size_t,size_t) ;int (* sparse ) (struct nvkm_vmm*,struct nvkm_mmu_pt*,size_t,size_t) ;int (* unmap ) (struct nvkm_vmm*,struct nvkm_mmu_pt*,size_t,size_t) ;} ;


 int LPT ;
 int NVKM_VMM_PTE_SPTES ;
 int NVKM_VMM_PTE_VALID ;
 int SPT ;
 int TRA (struct nvkm_vmm_iter*,char*,int ) ;
 int memset (int*,int,size_t) ;
 struct nvkm_mmu_pt* nvkm_mmu_ptc_get (struct nvkm_mmu*,size_t,int ,int const) ;
 int nvkm_vmm_desc_type (struct nvkm_vmm_desc const*) ;
 int nvkm_vmm_flush_mark (struct nvkm_vmm_iter*) ;
 int nvkm_vmm_sparse_ptes (struct nvkm_vmm_desc const*,struct nvkm_vmm_pt*,int ,size_t) ;
 int nvkm_vmm_unref_pdes (struct nvkm_vmm_iter*) ;
 int stub1 (struct nvkm_vmm*,struct nvkm_mmu_pt*,size_t,size_t) ;
 int stub2 (struct nvkm_vmm*,struct nvkm_mmu_pt*,size_t,size_t) ;
 int stub3 (struct nvkm_vmm*,struct nvkm_mmu_pt*,size_t,size_t) ;
 int stub4 (struct nvkm_vmm*,struct nvkm_mmu_pt*,size_t,size_t) ;
 int stub5 (struct nvkm_vmm*,struct nvkm_mmu_pt*,size_t,size_t) ;
 int stub6 (struct nvkm_vmm*,struct nvkm_vmm_pt*,size_t) ;

__attribute__((used)) static bool
nvkm_vmm_ref_hwpt(struct nvkm_vmm_iter *it, struct nvkm_vmm_pt *pgd, u32 pdei)
{
 const struct nvkm_vmm_desc *desc = &it->desc[it->lvl - 1];
 const int type = desc->type == SPT;
 struct nvkm_vmm_pt *pgt = pgd->pde[pdei];
 const bool zero = !pgt->sparse && !desc->func->invalid;
 struct nvkm_vmm *vmm = it->vmm;
 struct nvkm_mmu *mmu = vmm->mmu;
 struct nvkm_mmu_pt *pt;
 u32 pten = 1 << desc->bits;
 u32 pteb, ptei, ptes;
 u32 size = desc->size * pten;

 pgd->refs[0]++;

 pgt->pt[type] = nvkm_mmu_ptc_get(mmu, size, desc->align, zero);
 if (!pgt->pt[type]) {
  it->lvl--;
  nvkm_vmm_unref_pdes(it);
  return 0;
 }

 if (zero)
  goto done;

 pt = pgt->pt[type];

 if (desc->type == LPT && pgt->refs[1]) {






  for (ptei = pteb = 0; ptei < pten; pteb = ptei) {
   bool spte = pgt->pte[ptei] & NVKM_VMM_PTE_SPTES;
   for (ptes = 1, ptei++; ptei < pten; ptes++, ptei++) {
    bool next = pgt->pte[ptei] & NVKM_VMM_PTE_SPTES;
    if (spte != next)
     break;
   }

   if (!spte) {
    if (pgt->sparse)
     desc->func->sparse(vmm, pt, pteb, ptes);
    else
     desc->func->invalid(vmm, pt, pteb, ptes);
    memset(&pgt->pte[pteb], 0x00, ptes);
   } else {
    desc->func->unmap(vmm, pt, pteb, ptes);
    while (ptes--)
     pgt->pte[pteb++] |= NVKM_VMM_PTE_VALID;
   }
  }
 } else {
  if (pgt->sparse) {
   nvkm_vmm_sparse_ptes(desc, pgt, 0, pten);
   desc->func->sparse(vmm, pt, 0, pten);
  } else {
   desc->func->invalid(vmm, pt, 0, pten);
  }
 }

done:
 TRA(it, "PDE write %s", nvkm_vmm_desc_type(desc));
 it->desc[it->lvl].func->pde(it->vmm, pgd, pdei);
 nvkm_vmm_flush_mark(it);
 return 1;
}
