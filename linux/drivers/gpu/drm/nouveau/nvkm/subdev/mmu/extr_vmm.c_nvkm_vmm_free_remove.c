
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nvkm_vmm {int free; } ;
struct nvkm_vma {int tree; } ;


 int rb_erase (int *,int *) ;

__attribute__((used)) static inline void
nvkm_vmm_free_remove(struct nvkm_vmm *vmm, struct nvkm_vma *vma)
{
 rb_erase(&vma->tree, &vmm->free);
}
