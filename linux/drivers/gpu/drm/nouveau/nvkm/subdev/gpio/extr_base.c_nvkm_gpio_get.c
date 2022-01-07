
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct nvkm_gpio {int dummy; } ;
struct dcb_gpio_func {int* log; int line; } ;


 int nvkm_gpio_find (struct nvkm_gpio*,int,int ,int ,struct dcb_gpio_func*) ;
 int nvkm_gpio_sense (struct nvkm_gpio*,int,int ) ;

int
nvkm_gpio_get(struct nvkm_gpio *gpio, int idx, u8 tag, u8 line)
{
 struct dcb_gpio_func func;
 int ret;

 ret = nvkm_gpio_find(gpio, idx, tag, line, &func);
 if (ret == 0) {
  ret = nvkm_gpio_sense(gpio, idx, func.line);
  if (ret >= 0)
   ret = (ret == (func.log[1] & 1));
 }

 return ret;
}
