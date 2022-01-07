
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pl061 {int lock; scalar_t__ base; } ;
struct gpio_chip {int dummy; } ;


 unsigned char BIT (unsigned int) ;
 scalar_t__ GPIODIR ;
 struct pl061* gpiochip_get_data (struct gpio_chip*) ;
 int raw_spin_lock_irqsave (int *,unsigned long) ;
 int raw_spin_unlock_irqrestore (int *,unsigned long) ;
 unsigned char readb (scalar_t__) ;
 int writeb (int,scalar_t__) ;

__attribute__((used)) static int pl061_direction_output(struct gpio_chip *gc, unsigned offset,
  int value)
{
 struct pl061 *pl061 = gpiochip_get_data(gc);
 unsigned long flags;
 unsigned char gpiodir;

 raw_spin_lock_irqsave(&pl061->lock, flags);
 writeb(!!value << offset, pl061->base + (BIT(offset + 2)));
 gpiodir = readb(pl061->base + GPIODIR);
 gpiodir |= BIT(offset);
 writeb(gpiodir, pl061->base + GPIODIR);





 writeb(!!value << offset, pl061->base + (BIT(offset + 2)));
 raw_spin_unlock_irqrestore(&pl061->lock, flags);

 return 0;
}
