
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int u32 ;
struct nvkm_vram {int mn; int memory; } ;
struct nvkm_vmm_map {int mem; int offset; int * memory; } ;
struct nvkm_vmm {int dummy; } ;
struct nvkm_vma {int dummy; } ;
struct nvkm_memory {int dummy; } ;


 int nvkm_vmm_map (struct nvkm_vmm*,struct nvkm_vma*,void*,int ,struct nvkm_vmm_map*) ;
 struct nvkm_vram* nvkm_vram (struct nvkm_memory*) ;

__attribute__((used)) static int
nvkm_vram_map(struct nvkm_memory *memory, u64 offset, struct nvkm_vmm *vmm,
       struct nvkm_vma *vma, void *argv, u32 argc)
{
 struct nvkm_vram *vram = nvkm_vram(memory);
 struct nvkm_vmm_map map = {
  .memory = &vram->memory,
  .offset = offset,
  .mem = vram->mn,
 };

 return nvkm_vmm_map(vmm, vma, argv, argc, &map);
}
