
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nouveau_vma {int * mem; int addr; TYPE_1__* vmm; } ;
struct TYPE_2__ {int vmm; } ;


 int nvif_vmm_unmap (int *,int ) ;

void
nouveau_vma_unmap(struct nouveau_vma *vma)
{
 if (vma->mem) {
  nvif_vmm_unmap(&vma->vmm->vmm, vma->addr);
  vma->mem = ((void*)0);
 }
}
