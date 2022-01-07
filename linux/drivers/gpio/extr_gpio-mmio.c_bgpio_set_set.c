
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gpio_chip {unsigned long bgpio_data; int bgpio_lock; int reg_set; int (* write_reg ) (int ,unsigned long) ;} ;


 unsigned long bgpio_line2mask (struct gpio_chip*,unsigned int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int stub1 (int ,unsigned long) ;

__attribute__((used)) static void bgpio_set_set(struct gpio_chip *gc, unsigned int gpio, int val)
{
 unsigned long mask = bgpio_line2mask(gc, gpio);
 unsigned long flags;

 spin_lock_irqsave(&gc->bgpio_lock, flags);

 if (val)
  gc->bgpio_data |= mask;
 else
  gc->bgpio_data &= ~mask;

 gc->write_reg(gc->reg_set, gc->bgpio_data);

 spin_unlock_irqrestore(&gc->bgpio_lock, flags);
}
