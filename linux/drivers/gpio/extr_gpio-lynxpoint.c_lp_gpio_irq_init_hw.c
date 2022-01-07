
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {unsigned int ngpio; } ;
struct lp_gpio {TYPE_1__ chip; } ;
struct gpio_chip {int dummy; } ;


 int LP_INT_ENABLE ;
 int LP_INT_STAT ;
 struct lp_gpio* gpiochip_get_data (struct gpio_chip*) ;
 unsigned long lp_gpio_reg (TYPE_1__*,unsigned int,int ) ;
 int outl (int,unsigned long) ;

__attribute__((used)) static int lp_gpio_irq_init_hw(struct gpio_chip *chip)
{
 struct lp_gpio *lg = gpiochip_get_data(chip);
 unsigned long reg;
 unsigned base;

 for (base = 0; base < lg->chip.ngpio; base += 32) {

  reg = lp_gpio_reg(&lg->chip, base, LP_INT_ENABLE);
  outl(0, reg);

  reg = lp_gpio_reg(&lg->chip, base, LP_INT_STAT);
  outl(0xffffffff, reg);
 }

 return 0;
}
