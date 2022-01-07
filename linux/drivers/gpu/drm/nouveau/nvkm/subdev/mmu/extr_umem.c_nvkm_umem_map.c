
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef unsigned long u64 ;
typedef int u32 ;
struct nvkm_umem {int type; int io; int bar; int memory; scalar_t__ map; int mappable; struct nvkm_mmu* mmu; } ;
struct nvkm_object {int dummy; } ;
struct nvkm_mmu {TYPE_2__* func; } ;
typedef enum nvkm_object_map { ____Placeholder_nvkm_object_map } nvkm_object_map ;
struct TYPE_3__ {int (* umap ) (struct nvkm_mmu*,int ,void*,int ,unsigned long*,unsigned long*,int *) ;} ;
struct TYPE_4__ {TYPE_1__ mem; } ;


 int EEXIST ;
 int EINVAL ;
 int NVKM_MEM_HOST ;
 int NVKM_MEM_KIND ;
 int NVKM_MEM_VRAM ;
 int NVKM_OBJECT_MAP_IO ;
 int NVKM_OBJECT_MAP_VA ;
 int nvkm_mem_map_host (int ,scalar_t__*) ;
 unsigned long nvkm_memory_size (int ) ;
 struct nvkm_umem* nvkm_umem (struct nvkm_object*) ;
 int stub1 (struct nvkm_mmu*,int ,void*,int ,unsigned long*,unsigned long*,int *) ;

__attribute__((used)) static int
nvkm_umem_map(struct nvkm_object *object, void *argv, u32 argc,
       enum nvkm_object_map *type, u64 *handle, u64 *length)
{
 struct nvkm_umem *umem = nvkm_umem(object);
 struct nvkm_mmu *mmu = umem->mmu;

 if (!umem->mappable)
  return -EINVAL;
 if (umem->map)
  return -EEXIST;

 if ((umem->type & NVKM_MEM_HOST) && !argc) {
  int ret = nvkm_mem_map_host(umem->memory, &umem->map);
  if (ret)
   return ret;

  *handle = (unsigned long)(void *)umem->map;
  *length = nvkm_memory_size(umem->memory);
  *type = NVKM_OBJECT_MAP_VA;
  return 0;
 } else
 if ((umem->type & NVKM_MEM_VRAM) ||
     (umem->type & NVKM_MEM_KIND)) {
  int ret = mmu->func->mem.umap(mmu, umem->memory, argv, argc,
           handle, length, &umem->bar);
  if (ret)
   return ret;

  *type = NVKM_OBJECT_MAP_IO;
 } else {
  return -EINVAL;
 }

 umem->io = (*type == NVKM_OBJECT_MAP_IO);
 return 0;
}
