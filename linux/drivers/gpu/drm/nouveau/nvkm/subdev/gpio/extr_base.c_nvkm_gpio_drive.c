
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nvkm_gpio {TYPE_1__* func; } ;
struct TYPE_2__ {int (* drive ) (struct nvkm_gpio*,int,int,int) ;} ;


 int stub1 (struct nvkm_gpio*,int,int,int) ;

__attribute__((used)) static int
nvkm_gpio_drive(struct nvkm_gpio *gpio, int idx, int line, int dir, int out)
{
 return gpio->func->drive(gpio, line, dir, out);
}
