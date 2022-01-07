
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u64 ;
struct nvif_mmu {int mem; } ;
struct nvif_mem {int object; } ;


 int NVIF_MEM_MAPPABLE ;
 int nvif_mem_fini (struct nvif_mem*) ;
 int nvif_mem_init (struct nvif_mmu*,int ,int,int ,int ,int *,int ,struct nvif_mem*) ;
 int nvif_object_map (int *,int *,int ) ;

int
nvif_mem_init_map(struct nvif_mmu *mmu, u8 type, u64 size, struct nvif_mem *mem)
{
 int ret = nvif_mem_init(mmu, mmu->mem, NVIF_MEM_MAPPABLE | type, 0,
    size, ((void*)0), 0, mem);
 if (ret == 0) {
  ret = nvif_object_map(&mem->object, ((void*)0), 0);
  if (ret)
   nvif_mem_fini(mem);
 }
 return ret;
}
