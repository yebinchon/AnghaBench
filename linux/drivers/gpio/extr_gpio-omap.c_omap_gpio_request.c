
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gpio_chip {int parent; } ;
struct gpio_bank {int lock; int mod_usage; } ;


 int BIT (unsigned int) ;
 struct gpio_bank* gpiochip_get_data (struct gpio_chip*) ;
 int omap_enable_gpio_module (struct gpio_bank*,unsigned int) ;
 int pm_runtime_get_sync (int ) ;
 int raw_spin_lock_irqsave (int *,unsigned long) ;
 int raw_spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int omap_gpio_request(struct gpio_chip *chip, unsigned offset)
{
 struct gpio_bank *bank = gpiochip_get_data(chip);
 unsigned long flags;

 pm_runtime_get_sync(chip->parent);

 raw_spin_lock_irqsave(&bank->lock, flags);
 omap_enable_gpio_module(bank, offset);
 bank->mod_usage |= BIT(offset);
 raw_spin_unlock_irqrestore(&bank->lock, flags);

 return 0;
}
