
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {struct nvkm_device* device; } ;
struct nvkm_gpio {TYPE_1__ subdev; } ;
struct nvkm_device {int dummy; } ;


 int nvkm_mask (struct nvkm_device*,int,int,int) ;

int
gf119_gpio_drive(struct nvkm_gpio *gpio, int line, int dir, int out)
{
 struct nvkm_device *device = gpio->subdev.device;
 u32 data = ((dir ^ 1) << 13) | (out << 12);
 nvkm_mask(device, 0x00d610 + (line * 4), 0x00003000, data);
 nvkm_mask(device, 0x00d604, 0x00000001, 0x00000001);
 return 0;
}
