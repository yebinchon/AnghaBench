
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nvkm_gpio {int dummy; } ;
struct nvkm_device {int dummy; } ;


 int gf119_gpio ;
 int nvkm_gpio_new_ (int *,struct nvkm_device*,int,struct nvkm_gpio**) ;

int
gf119_gpio_new(struct nvkm_device *device, int index, struct nvkm_gpio **pgpio)
{
 return nvkm_gpio_new_(&gf119_gpio, device, index, pgpio);
}
