
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_4__ {TYPE_1__* device; } ;
struct nvkm_volt {int vid_mask; TYPE_2__ subdev; } ;
struct nvkm_gpio {int dummy; } ;
struct TYPE_3__ {struct nvkm_gpio* gpio; } ;


 int ARRAY_SIZE (int *) ;
 int nvkm_gpio_get (struct nvkm_gpio*,int ,int ,int) ;
 int * tags ;

int
nvkm_voltgpio_get(struct nvkm_volt *volt)
{
 struct nvkm_gpio *gpio = volt->subdev.device->gpio;
 u8 vid = 0;
 int i;

 for (i = 0; i < ARRAY_SIZE(tags); i++) {
  if (volt->vid_mask & (1 << i)) {
   int ret = nvkm_gpio_get(gpio, 0, tags[i], 0xff);
   if (ret < 0)
    return ret;
   vid |= ret << i;
  }
 }

 return vid;
}
