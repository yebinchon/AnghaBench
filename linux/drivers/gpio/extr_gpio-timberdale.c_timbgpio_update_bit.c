
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct timbgpio {unsigned int membase; int lock; } ;
struct gpio_chip {int dummy; } ;


 struct timbgpio* gpiochip_get_data (struct gpio_chip*) ;
 int ioread32 (unsigned int) ;
 int iowrite32 (int,unsigned int) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static int timbgpio_update_bit(struct gpio_chip *gpio, unsigned index,
 unsigned offset, bool enabled)
{
 struct timbgpio *tgpio = gpiochip_get_data(gpio);
 u32 reg;

 spin_lock(&tgpio->lock);
 reg = ioread32(tgpio->membase + offset);

 if (enabled)
  reg |= (1 << index);
 else
  reg &= ~(1 << index);

 iowrite32(reg, tgpio->membase + offset);
 spin_unlock(&tgpio->lock);

 return 0;
}
