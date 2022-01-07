
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dln2_gpio {int dummy; } ;


 int DLN2_GPIO_PIN_GET_VAL ;
 int dln2_gpio_pin_val (struct dln2_gpio*,int ,unsigned int) ;

__attribute__((used)) static int dln2_gpio_pin_get_in_val(struct dln2_gpio *dln2, unsigned int pin)
{
 int ret;

 ret = dln2_gpio_pin_val(dln2, DLN2_GPIO_PIN_GET_VAL, pin);
 if (ret < 0)
  return ret;
 return !!ret;
}
