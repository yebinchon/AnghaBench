
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
 scalar_t__ nv50_gpio_location (int,int*,int*) ;
 int nvkm_mask (struct nvkm_device*,int,int,int) ;

int
nv50_gpio_drive(struct nvkm_gpio *gpio, int line, int dir, int out)
{
 struct nvkm_device *device = gpio->subdev.device;
 u32 reg, shift;

 if (nv50_gpio_location(line, &reg, &shift))
  return -EINVAL;

 nvkm_mask(device, reg, 3 << shift, (((dir ^ 1) << 1) | out) << shift);
 return 0;
}
