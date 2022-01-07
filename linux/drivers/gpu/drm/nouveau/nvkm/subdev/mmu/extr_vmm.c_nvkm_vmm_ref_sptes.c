
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct nvkm_vmm_pt {int* pte; int * pt; int * refs; } ;
struct nvkm_vmm_iter {struct nvkm_vmm* vmm; TYPE_1__* page; } ;
struct nvkm_vmm_desc {int bits; TYPE_2__* func; } ;
struct nvkm_vmm {int dummy; } ;
struct TYPE_4__ {int (* unmap ) (struct nvkm_vmm*,int ,int,int) ;scalar_t__ invalid; int (* sparse ) (struct nvkm_vmm*,int ,int const,int const) ;} ;
struct TYPE_3__ {struct nvkm_vmm_desc* desc; } ;


 int NVKM_VMM_PTE_SPARSE ;
 int NVKM_VMM_PTE_VALID ;
 int TRA (struct nvkm_vmm_iter*,char*,int const,int const) ;
 int min (int,int) ;
 int stub1 (struct nvkm_vmm*,int ,int const,int const) ;
 int stub2 (struct nvkm_vmm*,int ,int,int) ;
 int stub3 (struct nvkm_vmm*,int ,int,int) ;

__attribute__((used)) static void
nvkm_vmm_ref_sptes(struct nvkm_vmm_iter *it, struct nvkm_vmm_pt *pgt,
     const struct nvkm_vmm_desc *desc, u32 ptei, u32 ptes)
{
 const struct nvkm_vmm_desc *pair = it->page[-1].desc;
 const u32 sptb = desc->bits - pair->bits;
 const u32 sptn = 1 << sptb;
 struct nvkm_vmm *vmm = it->vmm;
 u32 spti = ptei & (sptn - 1), lpti, pteb;




 for (lpti = ptei >> sptb; ptes; spti = 0, lpti++) {
  const u32 pten = min(sptn - spti, ptes);
  pgt->pte[lpti] += pten;
  ptes -= pten;
 }


 if (!pgt->refs[0])
  return;

 for (ptei = pteb = ptei >> sptb; ptei < lpti; pteb = ptei) {

  if (pgt->pte[pteb] & NVKM_VMM_PTE_VALID) {
   for (ptes = 1, ptei++; ptei < lpti; ptes++, ptei++) {
    if (!(pgt->pte[ptei] & NVKM_VMM_PTE_VALID))
     break;
   }
   continue;
  }







  pgt->pte[ptei] |= NVKM_VMM_PTE_VALID;
  for (ptes = 1, ptei++; ptei < lpti; ptes++, ptei++) {
   if (pgt->pte[ptei] & NVKM_VMM_PTE_VALID)
    break;
   pgt->pte[ptei] |= NVKM_VMM_PTE_VALID;
  }

  if (pgt->pte[pteb] & NVKM_VMM_PTE_SPARSE) {
   const u32 spti = pteb * sptn;
   const u32 sptc = ptes * sptn;



   TRA(it, "SPTE %05x: U -> S %d PTEs", spti, sptc);
   desc->func->sparse(vmm, pgt->pt[1], spti, sptc);

   TRA(it, "LPTE %05x: S -> U %d PTEs", pteb, ptes);
   pair->func->unmap(vmm, pgt->pt[0], pteb, ptes);
  } else
  if (pair->func->invalid) {



   TRA(it, "LPTE %05x: I -> U %d PTEs", pteb, ptes);
   pair->func->unmap(vmm, pgt->pt[0], pteb, ptes);
  }
 }
}
