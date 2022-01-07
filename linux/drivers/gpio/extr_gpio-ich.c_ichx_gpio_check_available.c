
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct gpio_chip {int dummy; } ;
struct TYPE_2__ {int use_gpio; } ;


 int BIT (unsigned int) ;
 TYPE_1__ ichx_priv ;

__attribute__((used)) static bool ichx_gpio_check_available(struct gpio_chip *gpio, unsigned nr)
{
 return !!(ichx_priv.use_gpio & BIT(nr / 32));
}
