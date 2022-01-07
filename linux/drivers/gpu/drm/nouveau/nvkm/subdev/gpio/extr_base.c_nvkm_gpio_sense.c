
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nvkm_gpio {TYPE_1__* func; } ;
struct TYPE_2__ {int (* sense ) (struct nvkm_gpio*,int) ;} ;


 int stub1 (struct nvkm_gpio*,int) ;

__attribute__((used)) static int
nvkm_gpio_sense(struct nvkm_gpio *gpio, int idx, int line)
{
 return gpio->func->sense(gpio, line);
}
