
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {struct nvkm_device* device; } ;
struct nvkm_gpio {TYPE_1__ subdev; } ;
struct nvkm_device {int dummy; } ;


 int EINVAL ;
 int nvkm_mask (struct nvkm_device*,int,int,int) ;

__attribute__((used)) static int
nv10_gpio_drive(struct nvkm_gpio *gpio, int line, int dir, int out)
{
 struct nvkm_device *device = gpio->subdev.device;
 u32 reg, mask, data;

 if (line < 2) {
  line = line * 16;
  reg = 0x600818;
  mask = 0x00000011;
  data = (dir << 4) | out;
 } else
 if (line < 10) {
  line = (line - 2) * 4;
  reg = 0x60081c;
  mask = 0x00000003;
  data = (dir << 1) | out;
 } else
 if (line < 14) {
  line = (line - 10) * 4;
  reg = 0x600850;
  mask = 0x00000003;
  data = (dir << 1) | out;
 } else {
  return -EINVAL;
 }

 nvkm_mask(device, reg, mask << line, data << line);
 return 0;
}
