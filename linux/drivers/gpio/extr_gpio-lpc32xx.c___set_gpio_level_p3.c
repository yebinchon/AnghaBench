
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct lpc32xx_gpio_chip {TYPE_1__* gpio_grp; } ;
struct TYPE_2__ {int outp_clr; int outp_set; } ;


 int GPIO3_PIN_TO_BIT (unsigned int) ;
 int gpreg_write (struct lpc32xx_gpio_chip*,int ,int ) ;

__attribute__((used)) static void __set_gpio_level_p3(struct lpc32xx_gpio_chip *group,
 unsigned pin, int high)
{
 u32 u = GPIO3_PIN_TO_BIT(pin);

 if (high)
  gpreg_write(group, u, group->gpio_grp->outp_set);
 else
  gpreg_write(group, u, group->gpio_grp->outp_clr);
}
