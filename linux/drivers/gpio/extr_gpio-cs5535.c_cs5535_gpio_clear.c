
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cs5535_gpio_chip {int lock; } ;


 int __cs5535_gpio_clear (struct cs5535_gpio_chip*,unsigned int,unsigned int) ;
 struct cs5535_gpio_chip cs5535_gpio_chip ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

void cs5535_gpio_clear(unsigned offset, unsigned int reg)
{
 struct cs5535_gpio_chip *chip = &cs5535_gpio_chip;
 unsigned long flags;

 spin_lock_irqsave(&chip->lock, flags);
 __cs5535_gpio_clear(chip, offset, reg);
 spin_unlock_irqrestore(&chip->lock, flags);
}
