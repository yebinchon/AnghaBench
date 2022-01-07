
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gpio_bank {int irq_usage; int mod_usage; } ;


 int BIT (unsigned int) ;
 int LINE_USED (int ,unsigned int) ;
 int omap_enable_gpio_module (struct gpio_bank*,unsigned int) ;
 int omap_set_gpio_direction (struct gpio_bank*,unsigned int,int) ;

__attribute__((used)) static void omap_gpio_init_irq(struct gpio_bank *bank, unsigned offset)
{
 if (!LINE_USED(bank->mod_usage, offset)) {
  omap_enable_gpio_module(bank, offset);
  omap_set_gpio_direction(bank, offset, 1);
 }
 bank->irq_usage |= BIT(offset);
}
