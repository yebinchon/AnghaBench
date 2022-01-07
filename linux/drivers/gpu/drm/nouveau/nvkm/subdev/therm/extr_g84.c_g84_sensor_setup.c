
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {struct nvkm_device* device; } ;
struct nvkm_therm {TYPE_1__ subdev; } ;
struct nvkm_device {int fuse; } ;


 int mdelay (int) ;
 int nvkm_fuse_read (int ,int) ;
 int nvkm_mask (struct nvkm_device*,int,int,int) ;

void
g84_sensor_setup(struct nvkm_therm *therm)
{
 struct nvkm_device *device = therm->subdev.device;


 if (nvkm_fuse_read(device->fuse, 0x1a8) == 1) {
  nvkm_mask(device, 0x20008, 0x80008000, 0x80000000);
  nvkm_mask(device, 0x2000c, 0x80000003, 0x00000000);
  mdelay(20);
 }
}
