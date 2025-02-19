
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u64 ;
typedef int u32 ;
struct nvkm_vma {int dummy; } ;
struct TYPE_4__ {struct nvkm_device* device; } ;
struct nvkm_mmu {TYPE_2__ subdev; } ;
struct nvkm_memory {int dummy; } ;
struct nvkm_device {TYPE_1__* func; } ;
struct nv04_mem_map_vn {int dummy; } ;
struct TYPE_3__ {scalar_t__ const (* resource_addr ) (struct nvkm_device*,int) ;} ;


 int ENODEV ;
 int ENOSYS ;
 struct nvkm_vma* ERR_PTR (int ) ;
 int nvif_unvers (int,void**,int *,struct nv04_mem_map_vn) ;
 scalar_t__ nvkm_memory_addr (struct nvkm_memory*) ;
 scalar_t__ nvkm_memory_size (struct nvkm_memory*) ;
 scalar_t__ const stub1 (struct nvkm_device*,int) ;

int
nv04_mem_map(struct nvkm_mmu *mmu, struct nvkm_memory *memory, void *argv,
      u32 argc, u64 *paddr, u64 *psize, struct nvkm_vma **pvma)
{
 union {
  struct nv04_mem_map_vn vn;
 } *args = argv;
 struct nvkm_device *device = mmu->subdev.device;
 const u64 addr = nvkm_memory_addr(memory);
 int ret = -ENOSYS;

 if ((ret = nvif_unvers(ret, &argv, &argc, args->vn)))
  return ret;

 *paddr = device->func->resource_addr(device, 1) + addr;
 *psize = nvkm_memory_size(memory);
 *pvma = ERR_PTR(-ENODEV);
 return 0;
}
