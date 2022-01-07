
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gpio_reg {int lock; int reg; int out; } ;
struct gpio_chip {int dummy; } ;


 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 struct gpio_reg* to_gpio_reg (struct gpio_chip*) ;
 int writel_relaxed (int ,int ) ;

int gpio_reg_resume(struct gpio_chip *gc)
{
 struct gpio_reg *r = to_gpio_reg(gc);
 unsigned long flags;

 spin_lock_irqsave(&r->lock, flags);
 writel_relaxed(r->out, r->reg);
 spin_unlock_irqrestore(&r->lock, flags);

 return 0;
}
