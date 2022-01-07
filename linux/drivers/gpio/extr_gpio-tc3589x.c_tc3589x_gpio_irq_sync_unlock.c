
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
struct tc3589x_gpio {scalar_t__** oldregs; scalar_t__** regs; int irq_lock; struct tc3589x* tc3589x; } ;
struct tc3589x {int dummy; } ;
struct irq_data {int dummy; } ;
struct gpio_chip {int dummy; } ;


 int CACHE_NR_BANKS ;
 int CACHE_NR_REGS ;
 struct tc3589x_gpio* gpiochip_get_data (struct gpio_chip*) ;
 struct gpio_chip* irq_data_get_irq_chip_data (struct irq_data*) ;
 int mutex_unlock (int *) ;
 int tc3589x_reg_write (struct tc3589x*,scalar_t__ const,scalar_t__) ;

__attribute__((used)) static void tc3589x_gpio_irq_sync_unlock(struct irq_data *d)
{
 struct gpio_chip *gc = irq_data_get_irq_chip_data(d);
 struct tc3589x_gpio *tc3589x_gpio = gpiochip_get_data(gc);
 struct tc3589x *tc3589x = tc3589x_gpio->tc3589x;
 static const u8 regmap[] = {
  [135] = 131,
  [133] = 129,
  [132] = 128,
  [134] = 130,
 };
 int i, j;

 for (i = 0; i < CACHE_NR_REGS; i++) {
  for (j = 0; j < CACHE_NR_BANKS; j++) {
   u8 old = tc3589x_gpio->oldregs[i][j];
   u8 new = tc3589x_gpio->regs[i][j];

   if (new == old)
    continue;

   tc3589x_gpio->oldregs[i][j] = new;
   tc3589x_reg_write(tc3589x, regmap[i] + j * 8, new);
  }
 }

 mutex_unlock(&tc3589x_gpio->irq_lock);
}
