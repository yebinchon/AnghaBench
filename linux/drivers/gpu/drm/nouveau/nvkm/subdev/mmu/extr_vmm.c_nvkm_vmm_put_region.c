
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nvkm_vmm {int dummy; } ;
struct nvkm_vma {scalar_t__ size; int used; int addr; } ;


 struct nvkm_vma* node (struct nvkm_vma*,struct nvkm_vma*) ;
 int nvkm_vmm_free_delete (struct nvkm_vmm*,struct nvkm_vma*) ;
 int nvkm_vmm_free_insert (struct nvkm_vmm*,struct nvkm_vma*) ;

__attribute__((used)) static void
nvkm_vmm_put_region(struct nvkm_vmm *vmm, struct nvkm_vma *vma)
{
 struct nvkm_vma *prev, *next;

 if ((prev = node(vma, prev)) && !prev->used) {
  vma->addr = prev->addr;
  vma->size += prev->size;
  nvkm_vmm_free_delete(vmm, prev);
 }

 if ((next = node(vma, next)) && !next->used) {
  vma->size += next->size;
  nvkm_vmm_free_delete(vmm, next);
 }

 nvkm_vmm_free_insert(vmm, vma);
}
