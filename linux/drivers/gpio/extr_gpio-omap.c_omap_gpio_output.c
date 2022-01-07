
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gpio_chip {int dummy; } ;
struct gpio_bank {int lock; int (* set_dataout ) (struct gpio_bank*,unsigned int,int) ;} ;


 struct gpio_bank* gpiochip_get_data (struct gpio_chip*) ;
 int omap_set_gpio_direction (struct gpio_bank*,unsigned int,int ) ;
 int raw_spin_lock_irqsave (int *,unsigned long) ;
 int raw_spin_unlock_irqrestore (int *,unsigned long) ;
 int stub1 (struct gpio_bank*,unsigned int,int) ;

__attribute__((used)) static int omap_gpio_output(struct gpio_chip *chip, unsigned offset, int value)
{
 struct gpio_bank *bank;
 unsigned long flags;

 bank = gpiochip_get_data(chip);
 raw_spin_lock_irqsave(&bank->lock, flags);
 bank->set_dataout(bank, offset, value);
 omap_set_gpio_direction(bank, offset, 0);
 raw_spin_unlock_irqrestore(&bank->lock, flags);
 return 0;
}
