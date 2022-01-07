
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned long long u64 ;
struct nvkm_memory {int dummy; } ;
struct nvkm_mem {int pages; unsigned long long* dma; scalar_t__ mem; } ;


 struct nvkm_mem* nvkm_mem (struct nvkm_memory*) ;

__attribute__((used)) static u64
nvkm_mem_addr(struct nvkm_memory *memory)
{
 struct nvkm_mem *mem = nvkm_mem(memory);
 if (mem->pages == 1 && mem->mem)
  return mem->dma[0];
 return ~0ULL;
}
