
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gpio_chip {int parent; } ;
struct gpio_bank {int lock; int irq_usage; int mod_usage; } ;


 int BIT (unsigned int) ;
 int LINE_USED (int ,unsigned int) ;
 struct gpio_bank* gpiochip_get_data (struct gpio_chip*) ;
 int omap_clear_gpio_debounce (struct gpio_bank*,unsigned int) ;
 int omap_disable_gpio_module (struct gpio_bank*,unsigned int) ;
 int omap_set_gpio_direction (struct gpio_bank*,unsigned int,int) ;
 int pm_runtime_put (int ) ;
 int raw_spin_lock_irqsave (int *,unsigned long) ;
 int raw_spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void omap_gpio_free(struct gpio_chip *chip, unsigned offset)
{
 struct gpio_bank *bank = gpiochip_get_data(chip);
 unsigned long flags;

 raw_spin_lock_irqsave(&bank->lock, flags);
 bank->mod_usage &= ~(BIT(offset));
 if (!LINE_USED(bank->irq_usage, offset)) {
  omap_set_gpio_direction(bank, offset, 1);
  omap_clear_gpio_debounce(bank, offset);
 }
 omap_disable_gpio_module(bank, offset);
 raw_spin_unlock_irqrestore(&bank->lock, flags);

 pm_runtime_put(chip->parent);
}
