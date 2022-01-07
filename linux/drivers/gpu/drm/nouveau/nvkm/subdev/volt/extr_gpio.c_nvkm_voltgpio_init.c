
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nvkm_subdev {TYPE_1__* device; } ;
struct nvkm_volt {int vid_mask; struct nvkm_subdev subdev; } ;
struct nvkm_gpio {int dummy; } ;
struct dcb_gpio_func {int dummy; } ;
struct TYPE_2__ {struct nvkm_gpio* gpio; } ;


 int ARRAY_SIZE (int *) ;
 int ENOENT ;
 int nvkm_debug (struct nvkm_subdev*,char*,int) ;
 int nvkm_gpio_find (struct nvkm_gpio*,int ,int ,int,struct dcb_gpio_func*) ;
 int * tags ;

int
nvkm_voltgpio_init(struct nvkm_volt *volt)
{
 struct nvkm_subdev *subdev = &volt->subdev;
 struct nvkm_gpio *gpio = subdev->device->gpio;
 struct dcb_gpio_func func;
 int i;







 for (i = 0; i < ARRAY_SIZE(tags); i++) {
  if (volt->vid_mask & (1 << i)) {
   int ret = nvkm_gpio_find(gpio, 0, tags[i], 0xff, &func);
   if (ret) {
    if (ret != -ENOENT)
     return ret;
    nvkm_debug(subdev, "VID bit %d has no GPIO\n", i);
    volt->vid_mask &= ~(1 << i);
   }
  }
 }

 return 0;
}
