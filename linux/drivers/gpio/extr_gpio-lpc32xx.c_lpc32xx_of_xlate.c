
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef size_t u32 ;
struct of_phandle_args {size_t* args; } ;
struct gpio_chip {int dummy; } ;
struct TYPE_3__ {struct gpio_chip chip; } ;


 size_t ARRAY_SIZE (TYPE_1__*) ;
 int EINVAL ;
 TYPE_1__* lpc32xx_gpiochip ;

__attribute__((used)) static int lpc32xx_of_xlate(struct gpio_chip *gc,
       const struct of_phandle_args *gpiospec, u32 *flags)
{

 u32 bank = gpiospec->args[0];
 if ((bank >= ARRAY_SIZE(lpc32xx_gpiochip) ||
     (gc != &lpc32xx_gpiochip[bank].chip)))
  return -EINVAL;

 if (flags)
  *flags = gpiospec->args[2];
 return gpiospec->args[1];
}
