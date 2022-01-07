
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gpio_chip {int parent; } ;
struct gpio_bank {int lock; } ;


 int dev_info (int ,char*,unsigned int,unsigned int,int) ;
 struct gpio_bank* gpiochip_get_data (struct gpio_chip*) ;
 int omap2_set_gpio_debounce (struct gpio_bank*,unsigned int,unsigned int) ;
 int raw_spin_lock_irqsave (int *,unsigned long) ;
 int raw_spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int omap_gpio_debounce(struct gpio_chip *chip, unsigned offset,
         unsigned debounce)
{
 struct gpio_bank *bank;
 unsigned long flags;
 int ret;

 bank = gpiochip_get_data(chip);

 raw_spin_lock_irqsave(&bank->lock, flags);
 ret = omap2_set_gpio_debounce(bank, offset, debounce);
 raw_spin_unlock_irqrestore(&bank->lock, flags);

 if (ret)
  dev_info(chip->parent,
    "Could not set line %u debounce to %u microseconds (%d)",
    offset, debounce, ret);

 return ret;
}
