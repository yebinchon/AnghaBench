
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t u32 ;
struct nvkm_vmm_pt {int * pte; int * pde; } ;
struct nvkm_vmm_iter {TYPE_1__* desc; struct nvkm_vmm_pt** pt; } ;
struct TYPE_2__ {scalar_t__ type; } ;


 scalar_t__ LPT ;
 scalar_t__ PGD ;
 int memset (int *,int,int) ;
 int nvkm_vmm_unref_ptes (struct nvkm_vmm_iter*,int,size_t,size_t) ;

__attribute__((used)) static bool
nvkm_vmm_sparse_unref_ptes(struct nvkm_vmm_iter *it, bool pfn, u32 ptei, u32 ptes)
{
 struct nvkm_vmm_pt *pt = it->pt[0];
 if (it->desc->type == PGD)
  memset(&pt->pde[ptei], 0x00, sizeof(pt->pde[0]) * ptes);
 else
 if (it->desc->type == LPT)
  memset(&pt->pte[ptei], 0x00, sizeof(pt->pte[0]) * ptes);
 return nvkm_vmm_unref_ptes(it, pfn, ptei, ptes);
}
