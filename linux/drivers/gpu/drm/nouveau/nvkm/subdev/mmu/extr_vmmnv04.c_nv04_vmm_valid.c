
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct nvkm_vmm_map {int dummy; } ;
struct nvkm_vmm {int dummy; } ;
struct nv04_vmm_map_vn {int dummy; } ;


 int ENOSYS ;
 int VMM_DEBUG (struct nvkm_vmm*,char*) ;
 int nvif_unvers (int,void**,int *,struct nv04_vmm_map_vn) ;

int
nv04_vmm_valid(struct nvkm_vmm *vmm, void *argv, u32 argc,
        struct nvkm_vmm_map *map)
{
 union {
  struct nv04_vmm_map_vn vn;
 } *args = argv;
 int ret = -ENOSYS;
 if ((ret = nvif_unvers(ret, &argv, &argc, args->vn)))
  VMM_DEBUG(vmm, "args");
 return ret;
}
