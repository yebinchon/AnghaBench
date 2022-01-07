
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct of_phandle_args {int args_count; scalar_t__* args; } ;
struct gpio_chip {int of_gpio_n_cells; scalar_t__ ngpio; } ;


 int EINVAL ;
 scalar_t__ WARN_ON (int) ;

__attribute__((used)) static int of_gpio_simple_xlate(struct gpio_chip *gc,
    const struct of_phandle_args *gpiospec,
    u32 *flags)
{






 if (gc->of_gpio_n_cells < 2) {
  WARN_ON(1);
  return -EINVAL;
 }

 if (WARN_ON(gpiospec->args_count < gc->of_gpio_n_cells))
  return -EINVAL;

 if (gpiospec->args[0] >= gc->ngpio)
  return -EINVAL;

 if (flags)
  *flags = gpiospec->args[1];

 return gpiospec->args[0];
}
