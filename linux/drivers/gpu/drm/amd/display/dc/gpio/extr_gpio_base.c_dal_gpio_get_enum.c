
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct gpio {int en; } ;



uint32_t dal_gpio_get_enum(
 const struct gpio *gpio)
{
 return gpio->en;
}
