
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {struct nvkm_device* device; } ;
struct nvkm_therm {TYPE_1__ subdev; } ;
struct nvkm_device {int fuse; } ;


 int ENODEV ;
 int nvkm_fuse_read (int ,int) ;
 int nvkm_rd32 (struct nvkm_device*,int) ;

int
g84_temp_get(struct nvkm_therm *therm)
{
 struct nvkm_device *device = therm->subdev.device;

 if (nvkm_fuse_read(device->fuse, 0x1a8) == 1)
  return nvkm_rd32(device, 0x20400);
 else
  return -ENODEV;
}
