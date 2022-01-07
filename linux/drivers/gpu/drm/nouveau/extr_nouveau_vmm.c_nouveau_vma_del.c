
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nvif_vma {unsigned long long addr; int size; } ;
struct nouveau_vma {scalar_t__ refs; unsigned long long addr; int head; TYPE_1__* vmm; } ;
struct TYPE_2__ {int vmm; } ;


 int kfree (struct nouveau_vma*) ;
 scalar_t__ likely (int) ;
 int list_del (int *) ;
 int nvif_vmm_put (int *,struct nvif_vma*) ;

void
nouveau_vma_del(struct nouveau_vma **pvma)
{
 struct nouveau_vma *vma = *pvma;
 if (vma && --vma->refs <= 0) {
  if (likely(vma->addr != ~0ULL)) {
   struct nvif_vma tmp = { .addr = vma->addr, .size = 1 };
   nvif_vmm_put(&vma->vmm->vmm, &tmp);
  }
  list_del(&vma->head);
  kfree(*pvma);
  *pvma = ((void*)0);
 }
}
