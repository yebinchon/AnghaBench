
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_4__ {int index; TYPE_1__* device; } ;
struct nvkm_engine {TYPE_2__ subdev; } ;
struct TYPE_3__ {int chipset; } ;






 int WARN_ON (int) ;

__attribute__((used)) static bool
nv40_fifo_dma_engine(struct nvkm_engine *engine, u32 *reg, u32 *ctx)
{
 switch (engine->subdev.index) {
 case 131:
 case 128:
  return 0;
 case 130:
  *reg = 0x0032e0;
  *ctx = 0x38;
  return 1;
 case 129:
  if (engine->subdev.device->chipset < 0x44)
   return 0;
  *reg = 0x00330c;
  *ctx = 0x54;
  return 1;
 default:
  WARN_ON(1);
  return 0;
 }
}
