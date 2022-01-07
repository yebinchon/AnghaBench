
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct hw_ddc {int dummy; } ;
struct TYPE_2__ {struct hw_ddc* ddc; } ;
struct gpio {TYPE_1__ hw_container; } ;



struct hw_ddc *dal_gpio_get_ddc(struct gpio *gpio)
{
 return gpio->hw_container.ddc;
}
