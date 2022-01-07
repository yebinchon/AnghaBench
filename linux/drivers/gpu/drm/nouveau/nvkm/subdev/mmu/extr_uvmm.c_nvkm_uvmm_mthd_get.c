
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u64 ;
typedef int u32 ;
struct nvkm_vmm {int mutex; } ;
struct nvkm_vma {int user; int addr; } ;
struct TYPE_2__ {struct nvkm_client* client; } ;
struct nvkm_uvmm {struct nvkm_vmm* vmm; TYPE_1__ object; } ;
struct nvkm_client {int super; } ;
struct nvif_vmm_get_v0 {scalar_t__ type; int sparse; int addr; int size; int align; int page; } ;


 int ENOSYS ;
 scalar_t__ NVIF_VMM_GET_V0_ADDR ;
 scalar_t__ NVIF_VMM_GET_V0_PTES ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int nvif_unpack (int,void**,int *,struct nvif_vmm_get_v0,int ,int ,int) ;
 int nvkm_vmm_get_locked (struct nvkm_vmm*,int,int,int,int ,int ,int ,struct nvkm_vma**) ;

__attribute__((used)) static int
nvkm_uvmm_mthd_get(struct nvkm_uvmm *uvmm, void *argv, u32 argc)
{
 struct nvkm_client *client = uvmm->object.client;
 union {
  struct nvif_vmm_get_v0 v0;
 } *args = argv;
 struct nvkm_vmm *vmm = uvmm->vmm;
 struct nvkm_vma *vma;
 int ret = -ENOSYS;
 bool getref, mapref, sparse;
 u8 page, align;
 u64 size;

 if (!(ret = nvif_unpack(ret, &argv, &argc, args->v0, 0, 0, 0))) {
  getref = args->v0.type == NVIF_VMM_GET_V0_PTES;
  mapref = args->v0.type == NVIF_VMM_GET_V0_ADDR;
  sparse = args->v0.sparse;
  page = args->v0.page;
  align = args->v0.align;
  size = args->v0.size;
 } else
  return ret;

 mutex_lock(&vmm->mutex);
 ret = nvkm_vmm_get_locked(vmm, getref, mapref, sparse,
      page, align, size, &vma);
 mutex_unlock(&vmm->mutex);
 if (ret)
  return ret;

 args->v0.addr = vma->addr;
 vma->user = !client->super;
 return ret;
}
