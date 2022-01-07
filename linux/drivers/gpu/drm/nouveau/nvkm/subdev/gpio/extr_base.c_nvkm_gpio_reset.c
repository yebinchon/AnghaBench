
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct nvkm_gpio {TYPE_1__* func; } ;
struct TYPE_2__ {int (* reset ) (struct nvkm_gpio*,int ) ;} ;


 int stub1 (struct nvkm_gpio*,int ) ;

void
nvkm_gpio_reset(struct nvkm_gpio *gpio, u8 func)
{
 if (gpio->func->reset)
  gpio->func->reset(gpio, func);
}
