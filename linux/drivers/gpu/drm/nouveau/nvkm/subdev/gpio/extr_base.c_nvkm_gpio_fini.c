
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef unsigned long long u32 ;
struct nvkm_subdev {int dummy; } ;
struct nvkm_gpio {TYPE_1__* func; } ;
struct TYPE_2__ {unsigned long long lines; int (* intr_stat ) (struct nvkm_gpio*,unsigned long long*,unsigned long long*) ;int (* intr_mask ) (struct nvkm_gpio*,int ,unsigned long long,int ) ;} ;


 int NVKM_GPIO_TOGGLED ;
 struct nvkm_gpio* nvkm_gpio (struct nvkm_subdev*) ;
 int stub1 (struct nvkm_gpio*,int ,unsigned long long,int ) ;
 int stub2 (struct nvkm_gpio*,unsigned long long*,unsigned long long*) ;

__attribute__((used)) static int
nvkm_gpio_fini(struct nvkm_subdev *subdev, bool suspend)
{
 struct nvkm_gpio *gpio = nvkm_gpio(subdev);
 u32 mask = (1ULL << gpio->func->lines) - 1;

 gpio->func->intr_mask(gpio, NVKM_GPIO_TOGGLED, mask, 0);
 gpio->func->intr_stat(gpio, &mask, &mask);
 return 0;
}
