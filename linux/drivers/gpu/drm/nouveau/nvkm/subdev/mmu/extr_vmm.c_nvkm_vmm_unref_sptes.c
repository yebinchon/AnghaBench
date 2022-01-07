
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
struct TYPE_4__ {int (* invalid ) (struct nvkm_vmm*,int ,int,int) ;int (* sparse ) (struct nvkm_vmm*,int ,int,int) ;} ;
struct TYPE_3__ {struct nvkm_vmm_desc* desc; } ;


 int NVKM_VMM_PTE_SPARSE ;
 int NVKM_VMM_PTE_SPTES ;
 int NVKM_VMM_PTE_VALID ;
 int TRA (struct nvkm_vmm_iter*,char*,int,int) ;
 int min (int,int) ;
 int stub1 (struct nvkm_vmm*,int ,int,int) ;
 int stub2 (struct nvkm_vmm*,int ,int,int) ;

__attribute__((used)) static void
nvkm_vmm_unref_sptes(struct nvkm_vmm_iter *it, struct nvkm_vmm_pt *pgt,
       const struct nvkm_vmm_desc *desc, u32 ptei, u32 ptes)
{
 const struct nvkm_vmm_desc *pair = it->page[-1].desc;
 const u32 sptb = desc->bits - pair->bits;
 const u32 sptn = 1 << sptb;
 struct nvkm_vmm *vmm = it->vmm;
 u32 spti = ptei & (sptn - 1), lpti, pteb;




 for (lpti = ptei >> sptb; ptes; spti = 0, lpti++) {
  const u32 pten = min(sptn - spti, ptes);
  pgt->pte[lpti] -= pten;
  ptes -= pten;
 }


 if (!pgt->refs[0])
  return;

 for (ptei = pteb = ptei >> sptb; ptei < lpti; pteb = ptei) {

  if (pgt->pte[pteb] & NVKM_VMM_PTE_SPTES) {
   for (ptes = 1, ptei++; ptei < lpti; ptes++, ptei++) {
    if (!(pgt->pte[ptei] & NVKM_VMM_PTE_SPTES))
     break;
   }
   continue;
  }







  pgt->pte[ptei] &= ~NVKM_VMM_PTE_VALID;
  for (ptes = 1, ptei++; ptei < lpti; ptes++, ptei++) {
   if (pgt->pte[ptei] & NVKM_VMM_PTE_SPTES)
    break;
   pgt->pte[ptei] &= ~NVKM_VMM_PTE_VALID;
  }

  if (pgt->pte[pteb] & NVKM_VMM_PTE_SPARSE) {
   TRA(it, "LPTE %05x: U -> S %d PTEs", pteb, ptes);
   pair->func->sparse(vmm, pgt->pt[0], pteb, ptes);
  } else
  if (pair->func->invalid) {




   TRA(it, "LPTE %05x: U -> I %d PTEs", pteb, ptes);
   pair->func->invalid(vmm, pgt->pt[0], pteb, ptes);
  }
 }
}
