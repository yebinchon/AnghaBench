
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {struct nvkm_device* device; } ;
struct nvkm_i2c {TYPE_1__ subdev; } ;
struct nvkm_device {int dummy; } ;


 int nvkm_rd32 (struct nvkm_device*,int) ;
 int nvkm_wr32 (struct nvkm_device*,int,int) ;

void
g94_aux_mask(struct nvkm_i2c *i2c, u32 type, u32 mask, u32 data)
{
 struct nvkm_device *device = i2c->subdev.device;
 u32 temp = nvkm_rd32(device, 0x00e068), i;
 for (i = 0; i < 8; i++) {
  if (mask & (1 << i)) {
   if (!(data & (1 << i))) {
    temp &= ~(type << (i * 4));
    continue;
   }
   temp |= type << (i * 4);
  }
 }
 nvkm_wr32(device, 0x00e068, temp);
}
