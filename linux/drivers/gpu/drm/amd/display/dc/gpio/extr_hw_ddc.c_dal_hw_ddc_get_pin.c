
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct hw_gpio_pin {int dummy; } ;
struct TYPE_2__ {struct hw_gpio_pin base; } ;
struct hw_ddc {TYPE_1__ base; } ;
struct gpio {int dummy; } ;


 struct hw_ddc* dal_gpio_get_ddc (struct gpio*) ;

struct hw_gpio_pin *dal_hw_ddc_get_pin(struct gpio *gpio)
{
 struct hw_ddc *hw_ddc = dal_gpio_get_ddc(gpio);

 return &hw_ddc->base.base;
}
