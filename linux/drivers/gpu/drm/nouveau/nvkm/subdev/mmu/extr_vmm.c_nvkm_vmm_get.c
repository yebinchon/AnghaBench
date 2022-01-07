
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u64 ;
struct nvkm_vmm {int mutex; } ;
struct nvkm_vma {int dummy; } ;


 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int nvkm_vmm_get_locked (struct nvkm_vmm*,int,int,int,int ,int ,int ,struct nvkm_vma**) ;

int
nvkm_vmm_get(struct nvkm_vmm *vmm, u8 page, u64 size, struct nvkm_vma **pvma)
{
 int ret;
 mutex_lock(&vmm->mutex);
 ret = nvkm_vmm_get_locked(vmm, 0, 1, 0, page, 0, size, pvma);
 mutex_unlock(&vmm->mutex);
 return ret;
}
