
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct lpc32xx_gpio_chip {TYPE_1__* gpio_grp; } ;
struct TYPE_2__ {int dir_set; int dir_clr; } ;


 int GPIO3_PIN_TO_BIT (unsigned int) ;
 int gpreg_write (struct lpc32xx_gpio_chip*,int ,int ) ;

__attribute__((used)) static void __set_gpio_dir_p3(struct lpc32xx_gpio_chip *group,
 unsigned pin, int input)
{
 u32 u = GPIO3_PIN_TO_BIT(pin);

 if (input)
  gpreg_write(group, u, group->gpio_grp->dir_clr);
 else
  gpreg_write(group, u, group->gpio_grp->dir_set);
}
