
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gpio_chip {int bgpio_lock; int bgpio_dir; scalar_t__ reg_dir_out; int (* write_reg ) (scalar_t__,int ) ;scalar_t__ reg_dir_in; int (* set ) (struct gpio_chip*,unsigned int,int) ;} ;


 int bgpio_line2mask (struct gpio_chip*,unsigned int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int stub1 (struct gpio_chip*,unsigned int,int) ;
 int stub2 (scalar_t__,int ) ;
 int stub3 (scalar_t__,int ) ;

__attribute__((used)) static int bgpio_dir_out(struct gpio_chip *gc, unsigned int gpio, int val)
{
 unsigned long flags;

 gc->set(gc, gpio, val);

 spin_lock_irqsave(&gc->bgpio_lock, flags);

 gc->bgpio_dir |= bgpio_line2mask(gc, gpio);

 if (gc->reg_dir_in)
  gc->write_reg(gc->reg_dir_in, ~gc->bgpio_dir);
 if (gc->reg_dir_out)
  gc->write_reg(gc->reg_dir_out, gc->bgpio_dir);

 spin_unlock_irqrestore(&gc->bgpio_lock, flags);

 return 0;
}
