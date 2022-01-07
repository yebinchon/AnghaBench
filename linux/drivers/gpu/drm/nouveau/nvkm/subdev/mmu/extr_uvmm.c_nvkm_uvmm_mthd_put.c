
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u64 ;
typedef int u32 ;
struct nvkm_vmm {int mutex; } ;
struct nvkm_vma {scalar_t__ addr; scalar_t__ busy; int user; scalar_t__ part; } ;
struct TYPE_2__ {struct nvkm_client* client; } ;
struct nvkm_uvmm {struct nvkm_vmm* vmm; TYPE_1__ object; } ;
struct nvkm_client {int super; } ;
struct nvif_vmm_put_v0 {scalar_t__ addr; } ;


 int ENOENT ;
 int ENOSYS ;
 int VMM_DEBUG (struct nvkm_vmm*,char*,scalar_t__,unsigned long long,int,...) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int nvif_unpack (int,void**,int *,struct nvif_vmm_put_v0,int ,int ,int) ;
 struct nvkm_vma* nvkm_vmm_node_search (struct nvkm_vmm*,scalar_t__) ;
 int nvkm_vmm_put_locked (struct nvkm_vmm*,struct nvkm_vma*) ;

__attribute__((used)) static int
nvkm_uvmm_mthd_put(struct nvkm_uvmm *uvmm, void *argv, u32 argc)
{
 struct nvkm_client *client = uvmm->object.client;
 union {
  struct nvif_vmm_put_v0 v0;
 } *args = argv;
 struct nvkm_vmm *vmm = uvmm->vmm;
 struct nvkm_vma *vma;
 int ret = -ENOSYS;
 u64 addr;

 if (!(ret = nvif_unpack(ret, &argv, &argc, args->v0, 0, 0, 0))) {
  addr = args->v0.addr;
 } else
  return ret;

 mutex_lock(&vmm->mutex);
 vma = nvkm_vmm_node_search(vmm, args->v0.addr);
 if (ret = -ENOENT, !vma || vma->addr != addr || vma->part) {
  VMM_DEBUG(vmm, "lookup %016llx: %016llx %d", addr,
     vma ? vma->addr : ~0ULL, vma ? vma->part : 0);
  goto done;
 }

 if (ret = -ENOENT, (!vma->user && !client->super) || vma->busy) {
  VMM_DEBUG(vmm, "denied %016llx: %d %d %d", addr,
     vma->user, !client->super, vma->busy);
  goto done;
 }

 nvkm_vmm_put_locked(vmm, vma);
 ret = 0;
done:
 mutex_unlock(&vmm->mutex);
 return ret;
}
