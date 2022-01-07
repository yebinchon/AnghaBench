
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct nvkm_subdev {int dummy; } ;
struct nvkm_gpio_ntfy_rep {int mask; } ;
struct nvkm_gpio {int event; TYPE_1__* func; } ;
typedef int rep ;
struct TYPE_2__ {scalar_t__ lines; int (* intr_stat ) (struct nvkm_gpio*,scalar_t__*,scalar_t__*) ;} ;


 int NVKM_GPIO_HI ;
 int NVKM_GPIO_LO ;
 int nvkm_event_send (int *,int,scalar_t__,struct nvkm_gpio_ntfy_rep*,int) ;
 struct nvkm_gpio* nvkm_gpio (struct nvkm_subdev*) ;
 int stub1 (struct nvkm_gpio*,scalar_t__*,scalar_t__*) ;

__attribute__((used)) static void
nvkm_gpio_intr(struct nvkm_subdev *subdev)
{
 struct nvkm_gpio *gpio = nvkm_gpio(subdev);
 u32 hi, lo, i;

 gpio->func->intr_stat(gpio, &hi, &lo);

 for (i = 0; (hi | lo) && i < gpio->func->lines; i++) {
  struct nvkm_gpio_ntfy_rep rep = {
   .mask = (NVKM_GPIO_HI * !!(hi & (1 << i))) |
    (NVKM_GPIO_LO * !!(lo & (1 << i))),
  };
  nvkm_event_send(&gpio->event, rep.mask, i, &rep, sizeof(rep));
 }
}
