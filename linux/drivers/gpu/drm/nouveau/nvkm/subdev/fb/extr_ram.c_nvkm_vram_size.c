
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
struct nvkm_memory {int dummy; } ;
struct TYPE_2__ {int mn; } ;


 int NVKM_RAM_MM_SHIFT ;
 scalar_t__ nvkm_mm_size (int ) ;
 TYPE_1__* nvkm_vram (struct nvkm_memory*) ;

__attribute__((used)) static u64
nvkm_vram_size(struct nvkm_memory *memory)
{
 return (u64)nvkm_mm_size(nvkm_vram(memory)->mn) << NVKM_RAM_MM_SHIFT;
}
