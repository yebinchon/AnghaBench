
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {struct nvkm_device* device; } ;
struct nvkm_therm {TYPE_1__ subdev; } ;
struct nvkm_device {int dummy; } ;


 int ENODEV ;
 int nvkm_rd32 (struct nvkm_device*,int) ;

int
gt215_therm_fan_sense(struct nvkm_therm *therm)
{
 struct nvkm_device *device = therm->subdev.device;
 u32 tach = nvkm_rd32(device, 0x00e728) & 0x0000ffff;
 u32 ctrl = nvkm_rd32(device, 0x00e720);
 if (ctrl & 0x00000001)
  return tach * 60 / 2;
 return -ENODEV;
}
