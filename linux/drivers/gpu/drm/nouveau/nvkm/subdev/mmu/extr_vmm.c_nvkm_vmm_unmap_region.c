
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct nvkm_vmm {TYPE_2__* mmu; } ;
struct nvkm_vma {int mapped; int size; scalar_t__ part; int memory; int tags; } ;
struct TYPE_3__ {int device; } ;
struct TYPE_4__ {TYPE_1__ subdev; } ;


 struct nvkm_vma* node (struct nvkm_vma*,struct nvkm_vma*) ;
 int nvkm_memory_tags_put (int ,int ,int *) ;
 int nvkm_memory_unref (int *) ;
 int nvkm_vmm_node_merge (struct nvkm_vmm*,struct nvkm_vma*,struct nvkm_vma*,struct nvkm_vma*,int ) ;

void
nvkm_vmm_unmap_region(struct nvkm_vmm *vmm, struct nvkm_vma *vma)
{
 struct nvkm_vma *prev = ((void*)0);
 struct nvkm_vma *next;

 nvkm_memory_tags_put(vma->memory, vmm->mmu->subdev.device, &vma->tags);
 nvkm_memory_unref(&vma->memory);
 vma->mapped = 0;

 if (vma->part && (prev = node(vma, prev)) && prev->mapped)
  prev = ((void*)0);
 if ((next = node(vma, next)) && (!next->part || next->mapped))
  next = ((void*)0);
 nvkm_vmm_node_merge(vmm, prev, vma, next, vma->size);
}
