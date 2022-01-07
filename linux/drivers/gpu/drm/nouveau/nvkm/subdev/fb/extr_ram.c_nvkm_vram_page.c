
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct nvkm_memory {int dummy; } ;
struct TYPE_2__ {int page; } ;


 TYPE_1__* nvkm_vram (struct nvkm_memory*) ;

__attribute__((used)) static u8
nvkm_vram_page(struct nvkm_memory *memory)
{
 return nvkm_vram(memory)->page;
}
