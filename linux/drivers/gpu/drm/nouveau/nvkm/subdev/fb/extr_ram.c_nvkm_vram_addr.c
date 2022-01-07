
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned long long u64 ;
struct nvkm_vram {int mn; } ;
struct nvkm_memory {int dummy; } ;


 unsigned long long NVKM_RAM_MM_SHIFT ;
 scalar_t__ nvkm_mm_addr (int ) ;
 int nvkm_mm_contiguous (int ) ;
 struct nvkm_vram* nvkm_vram (struct nvkm_memory*) ;

__attribute__((used)) static u64
nvkm_vram_addr(struct nvkm_memory *memory)
{
 struct nvkm_vram *vram = nvkm_vram(memory);
 if (!nvkm_mm_contiguous(vram->mn))
  return ~0ULL;
 return (u64)nvkm_mm_addr(vram->mn) << NVKM_RAM_MM_SHIFT;
}
