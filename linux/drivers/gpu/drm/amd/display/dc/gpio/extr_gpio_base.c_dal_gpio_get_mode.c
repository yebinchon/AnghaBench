
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gpio {int mode; } ;
typedef enum gpio_mode { ____Placeholder_gpio_mode } gpio_mode ;



enum gpio_mode dal_gpio_get_mode(
 const struct gpio *gpio)
{
 return gpio->mode;
}
