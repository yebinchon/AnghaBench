
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef scalar_t__ u64 ;
struct nvkm_vmm {int dummy; } ;
struct nvkm_vma {scalar_t__ addr; int mapped; scalar_t__ size; scalar_t__ memory; scalar_t__ part; } ;


 struct nvkm_vma* node (struct nvkm_vma*,struct nvkm_vma*) ;
 struct nvkm_vma* nvkm_vmm_node_merge (struct nvkm_vmm*,struct nvkm_vma*,struct nvkm_vma*,struct nvkm_vma*,scalar_t__) ;
 struct nvkm_vma* nvkm_vmm_node_split (struct nvkm_vmm*,struct nvkm_vma*,scalar_t__,scalar_t__) ;

__attribute__((used)) static struct nvkm_vma *
nvkm_vmm_pfn_split_merge(struct nvkm_vmm *vmm, struct nvkm_vma *vma,
    u64 addr, u64 size, u8 page, bool map)
{
 struct nvkm_vma *prev = ((void*)0);
 struct nvkm_vma *next = ((void*)0);

 if (vma->addr == addr && vma->part && (prev = node(vma, prev))) {
  if (prev->memory || prev->mapped != map)
   prev = ((void*)0);
 }

 if (vma->addr + vma->size == addr + size && (next = node(vma, next))) {
  if (!next->part ||
      next->memory || next->mapped != map)
   next = ((void*)0);
 }

 if (prev || next)
  return nvkm_vmm_node_merge(vmm, prev, vma, next, size);
 return nvkm_vmm_node_split(vmm, vma, addr, size);
}
