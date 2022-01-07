
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
typedef int u64 ;
typedef int u32 ;
struct TYPE_3__ {int device; } ;
struct nvkm_mmu {TYPE_1__ subdev; TYPE_2__* type; } ;
struct nvkm_memory {int dummy; } ;
struct nv04_mem_vn {int dummy; } ;
struct TYPE_4__ {int type; } ;


 int ENOSYS ;
 int NVKM_MEM_MAPPABLE ;
 int NVKM_RAM_MM_NOMAP ;
 int NVKM_RAM_MM_NORMAL ;
 int nvif_unvers (int,void**,int *,struct nv04_mem_vn) ;
 int nvkm_ram_get (int ,int,int,int ,int ,int,int,struct nvkm_memory**) ;

int
nv04_mem_new(struct nvkm_mmu *mmu, int type, u8 page, u64 size,
      void *argv, u32 argc, struct nvkm_memory **pmemory)
{
 union {
  struct nv04_mem_vn vn;
 } *args = argv;
 int ret = -ENOSYS;

 if ((ret = nvif_unvers(ret, &argv, &argc, args->vn)))
  return ret;

 if (mmu->type[type].type & NVKM_MEM_MAPPABLE)
  type = NVKM_RAM_MM_NORMAL;
 else
  type = NVKM_RAM_MM_NOMAP;

 return nvkm_ram_get(mmu->subdev.device, type, 0x01, page,
       size, 1, 0, pmemory);
}
