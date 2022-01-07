
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nvkm_vmm {int mutex; } ;
struct nvkm_vma {scalar_t__ memory; } ;


 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int nvkm_vmm_unmap_locked (struct nvkm_vmm*,struct nvkm_vma*,int) ;

void
nvkm_vmm_unmap(struct nvkm_vmm *vmm, struct nvkm_vma *vma)
{
 if (vma->memory) {
  mutex_lock(&vmm->mutex);
  nvkm_vmm_unmap_locked(vmm, vma, 0);
  mutex_unlock(&vmm->mutex);
 }
}
