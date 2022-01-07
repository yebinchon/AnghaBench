
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nvif_vma {int addr; } ;
struct nouveau_vma {struct nouveau_mem* mem; TYPE_1__* vmm; int addr; } ;
struct nouveau_mem {int dummy; } ;
struct TYPE_2__ {int vmm; } ;


 int nouveau_mem_map (struct nouveau_mem*,int *,struct nvif_vma*) ;

int
nouveau_vma_map(struct nouveau_vma *vma, struct nouveau_mem *mem)
{
 struct nvif_vma tmp = { .addr = vma->addr };
 int ret = nouveau_mem_map(mem, &vma->vmm->vmm, &tmp);
 if (ret)
  return ret;
 vma->mem = mem;
 return 0;
}
