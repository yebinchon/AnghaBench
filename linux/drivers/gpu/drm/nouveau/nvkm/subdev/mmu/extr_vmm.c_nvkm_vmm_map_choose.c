
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct nvkm_vmm_map {TYPE_2__* page; } ;
struct nvkm_vmm {TYPE_1__* func; } ;
struct nvkm_vma {int dummy; } ;
struct TYPE_4__ {scalar_t__ shift; } ;
struct TYPE_3__ {TYPE_2__* page; } ;


 int EINVAL ;
 int VMM_DEBUG (struct nvkm_vmm*,char*,scalar_t__) ;
 int nvkm_vmm_map_valid (struct nvkm_vmm*,struct nvkm_vma*,void*,int ,struct nvkm_vmm_map*) ;

__attribute__((used)) static int
nvkm_vmm_map_choose(struct nvkm_vmm *vmm, struct nvkm_vma *vma,
      void *argv, u32 argc, struct nvkm_vmm_map *map)
{
 for (map->page = vmm->func->page; map->page->shift; map->page++) {
  VMM_DEBUG(vmm, "trying %d", map->page->shift);
  if (!nvkm_vmm_map_valid(vmm, vma, argv, argc, map))
   return 0;
 }
 return -EINVAL;
}
