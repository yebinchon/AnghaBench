
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct nvif_vma {unsigned long long addr; } ;
struct nouveau_vmm {int vmm; } ;
struct nouveau_vma {int refs; unsigned long long addr; int head; int * fence; int * mem; struct nouveau_vmm* vmm; } ;
struct TYPE_5__ {scalar_t__ page; int size; } ;
struct nouveau_mem {TYPE_2__ mem; } ;
struct TYPE_6__ {scalar_t__ mem_type; } ;
struct TYPE_4__ {TYPE_3__ mem; } ;
struct nouveau_bo {scalar_t__ page; TYPE_1__ bo; int vma_list; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int LAZY ;
 int PTES ;
 scalar_t__ TTM_PL_SYSTEM ;
 struct nouveau_vma* kmalloc (int,int ) ;
 int list_add_tail (int *,int *) ;
 struct nouveau_mem* nouveau_mem (TYPE_3__*) ;
 int nouveau_vma_del (struct nouveau_vma**) ;
 struct nouveau_vma* nouveau_vma_find (struct nouveau_bo*,struct nouveau_vmm*) ;
 int nouveau_vma_map (struct nouveau_vma*,struct nouveau_mem*) ;
 int nvif_vmm_get (int *,int ,int,scalar_t__,int ,int ,struct nvif_vma*) ;

int
nouveau_vma_new(struct nouveau_bo *nvbo, struct nouveau_vmm *vmm,
  struct nouveau_vma **pvma)
{
 struct nouveau_mem *mem = nouveau_mem(&nvbo->bo.mem);
 struct nouveau_vma *vma;
 struct nvif_vma tmp;
 int ret;

 if ((vma = *pvma = nouveau_vma_find(nvbo, vmm))) {
  vma->refs++;
  return 0;
 }

 if (!(vma = *pvma = kmalloc(sizeof(*vma), GFP_KERNEL)))
  return -ENOMEM;
 vma->vmm = vmm;
 vma->refs = 1;
 vma->addr = ~0ULL;
 vma->mem = ((void*)0);
 vma->fence = ((void*)0);
 list_add_tail(&vma->head, &nvbo->vma_list);

 if (nvbo->bo.mem.mem_type != TTM_PL_SYSTEM &&
     mem->mem.page == nvbo->page) {
  ret = nvif_vmm_get(&vmm->vmm, LAZY, 0, mem->mem.page, 0,
       mem->mem.size, &tmp);
  if (ret)
   goto done;

  vma->addr = tmp.addr;
  ret = nouveau_vma_map(vma, mem);
 } else {
  ret = nvif_vmm_get(&vmm->vmm, PTES, 0, mem->mem.page, 0,
       mem->mem.size, &tmp);
  vma->addr = tmp.addr;
 }

done:
 if (ret)
  nouveau_vma_del(pvma);
 return ret;
}
