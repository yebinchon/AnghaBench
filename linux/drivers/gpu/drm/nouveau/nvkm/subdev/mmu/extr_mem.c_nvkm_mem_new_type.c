
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u8 ;
typedef int u64 ;
typedef int u32 ;
struct nvkm_mmu {TYPE_3__* func; TYPE_1__* type; } ;
struct nvkm_memory {int dummy; } ;
struct TYPE_5__ {int (* vram ) (struct nvkm_mmu*,int,int ,int ,void*,int ,struct nvkm_memory**) ;} ;
struct TYPE_6__ {TYPE_2__ mem; } ;
struct TYPE_4__ {int type; } ;


 int NVKM_MEM_VRAM ;
 int nvkm_mem_new_host (struct nvkm_mmu*,int,int ,int ,void*,int ,struct nvkm_memory**) ;
 int nvkm_memory_unref (struct nvkm_memory**) ;
 int stub1 (struct nvkm_mmu*,int,int ,int ,void*,int ,struct nvkm_memory**) ;

int
nvkm_mem_new_type(struct nvkm_mmu *mmu, int type, u8 page, u64 size,
    void *argv, u32 argc, struct nvkm_memory **pmemory)
{
 struct nvkm_memory *memory = ((void*)0);
 int ret;

 if (mmu->type[type].type & NVKM_MEM_VRAM) {
  ret = mmu->func->mem.vram(mmu, type, page, size,
       argv, argc, &memory);
 } else {
  ret = nvkm_mem_new_host(mmu, type, page, size,
     argv, argc, &memory);
 }

 if (ret)
  nvkm_memory_unref(&memory);
 *pmemory = memory;
 return ret;
}
