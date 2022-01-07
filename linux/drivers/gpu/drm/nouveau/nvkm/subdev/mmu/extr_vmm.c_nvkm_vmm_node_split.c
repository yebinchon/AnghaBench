
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u64 ;
struct nvkm_vmm {int dummy; } ;
struct nvkm_vma {scalar_t__ addr; scalar_t__ size; int part; } ;


 struct nvkm_vma* nvkm_vma_tail (struct nvkm_vma*,scalar_t__) ;
 int nvkm_vmm_node_insert (struct nvkm_vmm*,struct nvkm_vma*) ;
 int nvkm_vmm_node_merge (struct nvkm_vmm*,struct nvkm_vma*,struct nvkm_vma*,int *,scalar_t__) ;

struct nvkm_vma *
nvkm_vmm_node_split(struct nvkm_vmm *vmm,
      struct nvkm_vma *vma, u64 addr, u64 size)
{
 struct nvkm_vma *prev = ((void*)0);

 if (vma->addr != addr) {
  prev = vma;
  if (!(vma = nvkm_vma_tail(vma, vma->size + vma->addr - addr)))
   return ((void*)0);
  vma->part = 1;
  nvkm_vmm_node_insert(vmm, vma);
 }

 if (vma->size != size) {
  struct nvkm_vma *tmp;
  if (!(tmp = nvkm_vma_tail(vma, vma->size - size))) {
   nvkm_vmm_node_merge(vmm, prev, vma, ((void*)0), vma->size);
   return ((void*)0);
  }
  tmp->part = 1;
  nvkm_vmm_node_insert(vmm, tmp);
 }

 return vma;
}
