
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u64 ;
typedef int u32 ;
struct nvkm_vmm {int mutex; } ;
struct nvkm_vma {scalar_t__ addr; int memory; scalar_t__ busy; int user; } ;
struct TYPE_2__ {struct nvkm_client* client; } ;
struct nvkm_uvmm {struct nvkm_vmm* vmm; TYPE_1__ object; } ;
struct nvkm_client {int super; } ;
struct nvif_vmm_unmap_v0 {scalar_t__ addr; } ;


 int EINVAL ;
 int ENOENT ;
 int ENOSYS ;
 int VMM_DEBUG (struct nvkm_vmm*,char*,...) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int nvif_unpack (int,void**,int *,struct nvif_vmm_unmap_v0,int ,int ,int) ;
 struct nvkm_vma* nvkm_vmm_node_search (struct nvkm_vmm*,scalar_t__) ;
 int nvkm_vmm_unmap_locked (struct nvkm_vmm*,struct nvkm_vma*,int) ;

__attribute__((used)) static int
nvkm_uvmm_mthd_unmap(struct nvkm_uvmm *uvmm, void *argv, u32 argc)
{
 struct nvkm_client *client = uvmm->object.client;
 union {
  struct nvif_vmm_unmap_v0 v0;
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
 vma = nvkm_vmm_node_search(vmm, addr);
 if (ret = -ENOENT, !vma || vma->addr != addr) {
  VMM_DEBUG(vmm, "lookup %016llx: %016llx",
     addr, vma ? vma->addr : ~0ULL);
  goto done;
 }

 if (ret = -ENOENT, (!vma->user && !client->super) || vma->busy) {
  VMM_DEBUG(vmm, "denied %016llx: %d %d %d", addr,
     vma->user, !client->super, vma->busy);
  goto done;
 }

 if (ret = -EINVAL, !vma->memory) {
  VMM_DEBUG(vmm, "unmapped");
  goto done;
 }

 nvkm_vmm_unmap_locked(vmm, vma, 0);
 ret = 0;
done:
 mutex_unlock(&vmm->mutex);
 return ret;
}
