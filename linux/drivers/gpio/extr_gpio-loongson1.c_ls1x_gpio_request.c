
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gpio_chip {int bgpio_lock; } ;


 int BIT (unsigned int) ;
 scalar_t__ GPIO_CFG ;
 int __raw_readl (scalar_t__) ;
 int __raw_writel (int,scalar_t__) ;
 scalar_t__ gpio_reg_base ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int ls1x_gpio_request(struct gpio_chip *gc, unsigned int offset)
{
 unsigned long flags;

 spin_lock_irqsave(&gc->bgpio_lock, flags);
 __raw_writel(__raw_readl(gpio_reg_base + GPIO_CFG) | BIT(offset),
       gpio_reg_base + GPIO_CFG);
 spin_unlock_irqrestore(&gc->bgpio_lock, flags);

 return 0;
}
