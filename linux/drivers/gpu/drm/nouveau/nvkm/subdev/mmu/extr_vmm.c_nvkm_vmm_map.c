
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct nvkm_vmm_map {int dummy; } ;
struct nvkm_vmm {int mutex; } ;
struct nvkm_vma {int busy; } ;


 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int nvkm_vmm_map_locked (struct nvkm_vmm*,struct nvkm_vma*,void*,int ,struct nvkm_vmm_map*) ;

int
nvkm_vmm_map(struct nvkm_vmm *vmm, struct nvkm_vma *vma, void *argv, u32 argc,
      struct nvkm_vmm_map *map)
{
 int ret;
 mutex_lock(&vmm->mutex);
 ret = nvkm_vmm_map_locked(vmm, vma, argv, argc, map);
 vma->busy = 0;
 mutex_unlock(&vmm->mutex);
 return ret;
}
