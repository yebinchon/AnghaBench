
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct nvkm_gpio {int dummy; } ;
struct nvbios_init {int offset; TYPE_2__* subdev; } ;
struct TYPE_4__ {TYPE_1__* device; } ;
struct TYPE_3__ {struct nvkm_gpio* gpio; } ;


 int DCB_GPIO_UNUSED ;
 scalar_t__ init_exec (struct nvbios_init*) ;
 int nvkm_gpio_reset (struct nvkm_gpio*,int ) ;
 int trace (char*) ;

__attribute__((used)) static void
init_gpio(struct nvbios_init *init)
{
 struct nvkm_gpio *gpio = init->subdev->device->gpio;

 trace("GPIO\n");
 init->offset += 1;

 if (init_exec(init))
  nvkm_gpio_reset(gpio, DCB_GPIO_UNUSED);
}
