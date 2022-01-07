
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {struct nvkm_device* device; } ;
struct nvkm_therm {TYPE_1__ subdev; } ;
struct nvkm_device {int dummy; } ;


 int nvkm_wr32 (struct nvkm_device*,int,int) ;

void
g84_therm_fini(struct nvkm_therm *therm)
{
 struct nvkm_device *device = therm->subdev.device;


 nvkm_wr32(device, 0x20000, 0x00000000);


 nvkm_wr32(device, 0x20100, 0xffffffff);
 nvkm_wr32(device, 0x1100, 0x10000);
}
