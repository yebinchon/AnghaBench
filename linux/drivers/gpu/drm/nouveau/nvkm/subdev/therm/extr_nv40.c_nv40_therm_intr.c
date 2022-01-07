
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct nvkm_subdev {struct nvkm_device* device; } ;
struct nvkm_therm {struct nvkm_subdev subdev; } ;
struct nvkm_device {int dummy; } ;


 int nvkm_error (struct nvkm_subdev*,char*,int ) ;
 int nvkm_rd32 (struct nvkm_device*,int) ;
 int nvkm_wr32 (struct nvkm_device*,int,int) ;

void
nv40_therm_intr(struct nvkm_therm *therm)
{
 struct nvkm_subdev *subdev = &therm->subdev;
 struct nvkm_device *device = subdev->device;
 uint32_t stat = nvkm_rd32(device, 0x1100);




 nvkm_wr32(device, 0x1100, 0x70000);

 nvkm_error(subdev, "THERM received an IRQ: stat = %x\n", stat);
}
