
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct nvkm_subdev {struct nvkm_device* device; } ;
struct nvkm_therm {struct nvkm_subdev subdev; } ;
struct nvkm_device {int dummy; } ;


 int ENODEV ;
 int nvkm_rd32 (struct nvkm_device*,int) ;
 int nvkm_trace (struct nvkm_subdev*,char*) ;

__attribute__((used)) static int
gp100_temp_get(struct nvkm_therm *therm)
{
 struct nvkm_device *device = therm->subdev.device;
 struct nvkm_subdev *subdev = &therm->subdev;
 u32 tsensor = nvkm_rd32(device, 0x020460);
 u32 inttemp = (tsensor & 0x0001fff8);


 if (tsensor & 0x40000000)
  nvkm_trace(subdev, "reading temperature from SHADOWed sensor\n");


 if (tsensor & 0x20000000)
  return (inttemp >> 8);
 else
  return -ENODEV;
}
