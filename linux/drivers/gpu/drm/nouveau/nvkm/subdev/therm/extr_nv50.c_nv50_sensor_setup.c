
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {struct nvkm_device* device; } ;
struct nvkm_therm {TYPE_1__ subdev; } ;
struct nvkm_device {int dummy; } ;


 int mdelay (int) ;
 int nvkm_mask (struct nvkm_device*,int,int,int) ;

__attribute__((used)) static void
nv50_sensor_setup(struct nvkm_therm *therm)
{
 struct nvkm_device *device = therm->subdev.device;
 nvkm_mask(device, 0x20010, 0x40000000, 0x0);
 mdelay(20);
}
