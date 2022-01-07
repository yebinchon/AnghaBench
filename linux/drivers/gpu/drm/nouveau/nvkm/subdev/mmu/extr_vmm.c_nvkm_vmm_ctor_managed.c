
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct nvkm_vmm {int list; } ;
struct nvkm_vma {int mapref; int sparse; int used; int user; int head; } ;


 int ENOMEM ;
 int list_add_tail (int *,int *) ;
 struct nvkm_vma* nvkm_vma_new (int ,int ) ;
 int nvkm_vmm_node_insert (struct nvkm_vmm*,struct nvkm_vma*) ;

__attribute__((used)) static int
nvkm_vmm_ctor_managed(struct nvkm_vmm *vmm, u64 addr, u64 size)
{
 struct nvkm_vma *vma;
 if (!(vma = nvkm_vma_new(addr, size)))
  return -ENOMEM;
 vma->mapref = 1;
 vma->sparse = 0;
 vma->used = 1;
 vma->user = 1;
 nvkm_vmm_node_insert(vmm, vma);
 list_add_tail(&vma->head, &vmm->list);
 return 0;
}
