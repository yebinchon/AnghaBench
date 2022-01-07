
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u64 ;
typedef int u32 ;
struct nvkm_vmm {int mutex; } ;
struct TYPE_2__ {struct nvkm_client* client; } ;
struct nvkm_uvmm {struct nvkm_vmm* vmm; TYPE_1__ object; } ;
struct nvkm_client {int super; } ;
struct nvif_vmm_pfnmap_v0 {int page; int addr; int size; int* phys; } ;


 int EINVAL ;
 int ENOENT ;
 int ENOSYS ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int nvif_unpack (int,void**,int*,struct nvif_vmm_pfnmap_v0,int ,int ,int) ;
 int nvkm_vmm_pfn_map (struct nvkm_vmm*,int,int,int,int*) ;

__attribute__((used)) static int
nvkm_uvmm_mthd_pfnmap(struct nvkm_uvmm *uvmm, void *argv, u32 argc)
{
 struct nvkm_client *client = uvmm->object.client;
 union {
  struct nvif_vmm_pfnmap_v0 v0;
 } *args = argv;
 struct nvkm_vmm *vmm = uvmm->vmm;
 int ret = -ENOSYS;
 u64 addr, size, *phys;
 u8 page;

 if (!(ret = nvif_unpack(ret, &argv, &argc, args->v0, 0, 0, 1))) {
  page = args->v0.page;
  addr = args->v0.addr;
  size = args->v0.size;
  phys = args->v0.phys;
  if (argc != (size >> page) * sizeof(args->v0.phys[0]))
   return -EINVAL;
 } else
  return ret;

 if (!client->super)
  return -ENOENT;

 if (size) {
  mutex_lock(&vmm->mutex);
  ret = nvkm_vmm_pfn_map(vmm, page, addr, size, phys);
  mutex_unlock(&vmm->mutex);
 }

 return ret;
}
