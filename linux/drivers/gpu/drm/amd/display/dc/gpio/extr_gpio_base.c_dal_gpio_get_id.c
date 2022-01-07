
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gpio {int id; } ;
typedef enum gpio_id { ____Placeholder_gpio_id } gpio_id ;



enum gpio_id dal_gpio_get_id(
 const struct gpio *gpio)
{
 return gpio->id;
}
