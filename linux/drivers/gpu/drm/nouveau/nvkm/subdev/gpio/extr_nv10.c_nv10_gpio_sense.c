
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {struct nvkm_device* device; } ;
struct nvkm_gpio {TYPE_1__ subdev; } ;
struct nvkm_device {int dummy; } ;


 int EINVAL ;
 int nvkm_rd32 (struct nvkm_device*,int) ;

__attribute__((used)) static int
nv10_gpio_sense(struct nvkm_gpio *gpio, int line)
{
 struct nvkm_device *device = gpio->subdev.device;
 if (line < 2) {
  line = line * 16;
  line = nvkm_rd32(device, 0x600818) >> line;
  return !!(line & 0x0100);
 } else
 if (line < 10) {
  line = (line - 2) * 4;
  line = nvkm_rd32(device, 0x60081c) >> line;
  return !!(line & 0x04);
 } else
 if (line < 14) {
  line = (line - 10) * 4;
  line = nvkm_rd32(device, 0x600850) >> line;
  return !!(line & 0x04);
 }

 return -EINVAL;
}
