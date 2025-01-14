
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct nvkm_subdev {struct nvkm_device* device; } ;
struct nvkm_gpio {int subdev; } ;
struct nvkm_device {struct nvkm_gpio* gpio; } ;
struct nvkm_bus {struct nvkm_subdev subdev; } ;


 int nvkm_error (struct nvkm_subdev*,char*,...) ;
 int nvkm_mask (struct nvkm_device*,int,int,int) ;
 int nvkm_rd32 (struct nvkm_device*,int) ;
 int nvkm_subdev_intr (int *) ;
 int nvkm_wr32 (struct nvkm_device*,int,int) ;

__attribute__((used)) static void
nv04_bus_intr(struct nvkm_bus *bus)
{
 struct nvkm_subdev *subdev = &bus->subdev;
 struct nvkm_device *device = subdev->device;
 u32 stat = nvkm_rd32(device, 0x001100) & nvkm_rd32(device, 0x001140);

 if (stat & 0x00000001) {
  nvkm_error(subdev, "BUS ERROR\n");
  stat &= ~0x00000001;
  nvkm_wr32(device, 0x001100, 0x00000001);
 }

 if (stat & 0x00000110) {
  struct nvkm_gpio *gpio = device->gpio;
  if (gpio)
   nvkm_subdev_intr(&gpio->subdev);
  stat &= ~0x00000110;
  nvkm_wr32(device, 0x001100, 0x00000110);
 }

 if (stat) {
  nvkm_error(subdev, "intr %08x\n", stat);
  nvkm_mask(device, 0x001140, stat, 0x00000000);
 }
}
