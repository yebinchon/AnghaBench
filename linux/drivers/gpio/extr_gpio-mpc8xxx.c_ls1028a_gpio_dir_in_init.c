
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mpc8xxx_gpio_chip {scalar_t__ regs; } ;
struct gpio_chip {int bgpio_lock; int (* write_reg ) (scalar_t__,int) ;} ;


 scalar_t__ GPIO_IBE ;
 struct mpc8xxx_gpio_chip* gpiochip_get_data (struct gpio_chip*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int stub1 (scalar_t__,int) ;

__attribute__((used)) static int ls1028a_gpio_dir_in_init(struct gpio_chip *gc)
{
 unsigned long flags;
 struct mpc8xxx_gpio_chip *mpc8xxx_gc = gpiochip_get_data(gc);

 spin_lock_irqsave(&gc->bgpio_lock, flags);

 gc->write_reg(mpc8xxx_gc->regs + GPIO_IBE, 0xffffffff);

 spin_unlock_irqrestore(&gc->bgpio_lock, flags);

 return 0;
}
