
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nvkm_vmm {int dummy; } ;
struct nvkm_vma {int head; } ;


 int kfree (struct nvkm_vma*) ;
 int list_del (int *) ;
 int nvkm_vmm_node_remove (struct nvkm_vmm*,struct nvkm_vma*) ;

__attribute__((used)) static inline void
nvkm_vmm_node_delete(struct nvkm_vmm *vmm, struct nvkm_vma *vma)
{
 nvkm_vmm_node_remove(vmm, vma);
 list_del(&vma->head);
 kfree(vma);
}
