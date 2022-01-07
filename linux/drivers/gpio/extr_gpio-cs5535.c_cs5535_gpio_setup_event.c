
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct cs5535_gpio_chip {unsigned int base; int lock; } ;


 unsigned int GPIO_MAP_W ;
 unsigned int GPIO_MAP_X ;
 unsigned int GPIO_MAP_Y ;
 unsigned int GPIO_MAP_Z ;
 struct cs5535_gpio_chip cs5535_gpio_chip ;
 int inl (unsigned int) ;
 int outl (int,unsigned int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

void cs5535_gpio_setup_event(unsigned offset, int pair, int pme)
{
 struct cs5535_gpio_chip *chip = &cs5535_gpio_chip;
 uint32_t shift = (offset % 8) * 4;
 unsigned long flags;
 uint32_t val;

 if (offset >= 24)
  offset = GPIO_MAP_W;
 else if (offset >= 16)
  offset = GPIO_MAP_Z;
 else if (offset >= 8)
  offset = GPIO_MAP_Y;
 else
  offset = GPIO_MAP_X;

 spin_lock_irqsave(&chip->lock, flags);
 val = inl(chip->base + offset);


 val &= ~(0xF << shift);


 val |= ((pair & 7) << shift);


 if (pme)
  val |= (1 << (shift + 3));

 outl(val, chip->base + offset);
 spin_unlock_irqrestore(&chip->lock, flags);
}
