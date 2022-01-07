
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nvkm_gpio_func {int lines; } ;
struct nvkm_gpio {int event; struct nvkm_gpio_func const* func; int subdev; } ;
struct nvkm_device {int dummy; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 struct nvkm_gpio* kzalloc (int,int ) ;
 int nvkm_event_init (int *,int,int ,int *) ;
 int nvkm_gpio ;
 int nvkm_gpio_intr_func ;
 int nvkm_subdev_ctor (int *,struct nvkm_device*,int,int *) ;

int
nvkm_gpio_new_(const struct nvkm_gpio_func *func, struct nvkm_device *device,
        int index, struct nvkm_gpio **pgpio)
{
 struct nvkm_gpio *gpio;

 if (!(gpio = *pgpio = kzalloc(sizeof(*gpio), GFP_KERNEL)))
  return -ENOMEM;

 nvkm_subdev_ctor(&nvkm_gpio, device, index, &gpio->subdev);
 gpio->func = func;

 return nvkm_event_init(&nvkm_gpio_intr_func, 2, func->lines,
          &gpio->event);
}
