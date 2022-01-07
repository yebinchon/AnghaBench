
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {struct nvkm_device* device; } ;
struct nvkm_gpio {TYPE_1__ subdev; } ;
struct nvkm_device {int dummy; } ;


 int nvkm_rd32 (struct nvkm_device*,int) ;

int
gf119_gpio_sense(struct nvkm_gpio *gpio, int line)
{
 struct nvkm_device *device = gpio->subdev.device;
 return !!(nvkm_rd32(device, 0x00d610 + (line * 4)) & 0x00004000);
}
