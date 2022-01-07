
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cs5535_gpio_chip {int lock; scalar_t__ base; } ;


 struct cs5535_gpio_chip cs5535_gpio_chip ;
 long inl (scalar_t__) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

int cs5535_gpio_isset(unsigned offset, unsigned int reg)
{
 struct cs5535_gpio_chip *chip = &cs5535_gpio_chip;
 unsigned long flags;
 long val;

 spin_lock_irqsave(&chip->lock, flags);
 if (offset < 16)

  val = inl(chip->base + reg);
 else {

  val = inl(chip->base + 0x80 + reg);
  offset -= 16;
 }
 spin_unlock_irqrestore(&chip->lock, flags);

 return (val & (1 << offset)) ? 1 : 0;
}
