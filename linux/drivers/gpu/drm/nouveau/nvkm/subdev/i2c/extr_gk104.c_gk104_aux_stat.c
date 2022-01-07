
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
gk104_aux_stat(struct nvkm_i2c *i2c, u32 *hi, u32 *lo, u32 *rq, u32 *tx)
{
 struct nvkm_device *device = i2c->subdev.device;
 u32 intr = nvkm_rd32(device, 0x00dc60);
 u32 stat = nvkm_rd32(device, 0x00dc68) & intr, i;
 for (i = 0, *hi = *lo = *rq = *tx = 0; i < 8; i++) {
  if ((stat & (1 << (i * 4)))) *hi |= 1 << i;
  if ((stat & (2 << (i * 4)))) *lo |= 1 << i;
  if ((stat & (4 << (i * 4)))) *rq |= 1 << i;
  if ((stat & (8 << (i * 4)))) *tx |= 1 << i;
 }
 nvkm_wr32(device, 0x00dc60, intr);
}
