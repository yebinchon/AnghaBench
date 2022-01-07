
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct nvkm_subdev {int dummy; } ;
struct TYPE_2__ {struct nvkm_device* device; } ;
struct nvkm_mc {TYPE_1__ subdev; } ;
struct nvkm_device {int dummy; } ;


 int NVKM_SUBDEV_FAULT ;
 struct nvkm_subdev* nvkm_device_subdev (struct nvkm_device*,int ) ;
 int nvkm_rd32 (struct nvkm_device*,int) ;
 int nvkm_subdev_intr (struct nvkm_subdev*) ;
 int nvkm_wr32 (struct nvkm_device*,int,int) ;

__attribute__((used)) static void
tu102_mc_intr_hack(struct nvkm_mc *mc, bool *handled)
{
 struct nvkm_device *device = mc->subdev.device;
 u32 stat = nvkm_rd32(device, 0xb81010);
 if (stat & 0x00000050) {
  struct nvkm_subdev *subdev =
   nvkm_device_subdev(device, NVKM_SUBDEV_FAULT);
  nvkm_wr32(device, 0xb81010, stat & 0x00000050);
  if (subdev)
   nvkm_subdev_intr(subdev);
  *handled = 1;
 }
}
