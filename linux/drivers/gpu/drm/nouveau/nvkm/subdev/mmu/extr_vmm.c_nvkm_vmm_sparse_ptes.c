
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u32 ;
struct nvkm_vmm_pt {int * pte; int * pde; } ;
struct nvkm_vmm_desc {scalar_t__ type; } ;


 scalar_t__ LPT ;
 int NVKM_VMM_PDE_SPARSE ;
 int NVKM_VMM_PTE_SPARSE ;
 scalar_t__ PGD ;
 int memset (int *,int ,size_t) ;

__attribute__((used)) static void
nvkm_vmm_sparse_ptes(const struct nvkm_vmm_desc *desc,
       struct nvkm_vmm_pt *pgt, u32 ptei, u32 ptes)
{
 if (desc->type == PGD) {
  while (ptes--)
   pgt->pde[ptei++] = NVKM_VMM_PDE_SPARSE;
 } else
 if (desc->type == LPT) {
  memset(&pgt->pte[ptei], NVKM_VMM_PTE_SPARSE, ptes);
 }
}
