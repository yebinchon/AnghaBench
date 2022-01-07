
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nvkm_vmm {int mutex; } ;
struct nvkm_vma {int dummy; } ;


 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int nvkm_vmm_put_locked (struct nvkm_vmm*,struct nvkm_vma*) ;

void
nvkm_vmm_put(struct nvkm_vmm *vmm, struct nvkm_vma **pvma)
{
 struct nvkm_vma *vma = *pvma;
 if (vma) {
  mutex_lock(&vmm->mutex);
  nvkm_vmm_put_locked(vmm, vma);
  mutex_unlock(&vmm->mutex);
  *pvma = ((void*)0);
 }
}
