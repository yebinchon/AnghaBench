
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gpio_chip {int dummy; } ;
struct gpio_bank {int lock; } ;


 struct gpio_bank* gpiochip_get_data (struct gpio_chip*) ;
 int omap_set_gpio_direction (struct gpio_bank*,unsigned int,int) ;
 int raw_spin_lock_irqsave (int *,unsigned long) ;
 int raw_spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int omap_gpio_input(struct gpio_chip *chip, unsigned offset)
{
 struct gpio_bank *bank;
 unsigned long flags;

 bank = gpiochip_get_data(chip);
 raw_spin_lock_irqsave(&bank->lock, flags);
 omap_set_gpio_direction(bank, offset, 1);
 raw_spin_unlock_irqrestore(&bank->lock, flags);
 return 0;
}
