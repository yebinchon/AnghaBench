
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gpio_reg {unsigned long out; int lock; int reg; } ;
struct gpio_chip {int dummy; } ;


 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 struct gpio_reg* to_gpio_reg (struct gpio_chip*) ;
 int writel_relaxed (unsigned long,int ) ;

__attribute__((used)) static void gpio_reg_set_multiple(struct gpio_chip *gc, unsigned long *mask,
 unsigned long *bits)
{
 struct gpio_reg *r = to_gpio_reg(gc);
 unsigned long flags;

 spin_lock_irqsave(&r->lock, flags);
 r->out = (r->out & ~*mask) | (*bits & *mask);
 writel_relaxed(r->out, r->reg);
 spin_unlock_irqrestore(&r->lock, flags);
}
