
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int u32 ;
struct nvkm_vmm_map {int dma; int offset; int * memory; } ;
struct nvkm_vmm {int dummy; } ;
struct nvkm_vma {int dummy; } ;
struct nvkm_memory {int dummy; } ;
struct nvkm_mem {int dma; int memory; } ;


 struct nvkm_mem* nvkm_mem (struct nvkm_memory*) ;
 int nvkm_vmm_map (struct nvkm_vmm*,struct nvkm_vma*,void*,int ,struct nvkm_vmm_map*) ;

__attribute__((used)) static int
nvkm_mem_map_dma(struct nvkm_memory *memory, u64 offset, struct nvkm_vmm *vmm,
   struct nvkm_vma *vma, void *argv, u32 argc)
{
 struct nvkm_mem *mem = nvkm_mem(memory);
 struct nvkm_vmm_map map = {
  .memory = &mem->memory,
  .offset = offset,
  .dma = mem->dma,
 };
 return nvkm_vmm_map(vmm, vma, argv, argc, &map);
}
