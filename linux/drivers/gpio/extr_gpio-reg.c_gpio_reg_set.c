
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct gpio_reg {int lock; int reg; int out; } ;
struct gpio_chip {int dummy; } ;


 int BIT (unsigned int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 struct gpio_reg* to_gpio_reg (struct gpio_chip*) ;
 int writel_relaxed (int ,int ) ;

__attribute__((used)) static void gpio_reg_set(struct gpio_chip *gc, unsigned offset, int value)
{
 struct gpio_reg *r = to_gpio_reg(gc);
 unsigned long flags;
 u32 val, mask = BIT(offset);

 spin_lock_irqsave(&r->lock, flags);
 val = r->out;
 if (value)
  val |= mask;
 else
  val &= ~mask;
 r->out = val;
 writel_relaxed(val, r->reg);
 spin_unlock_irqrestore(&r->lock, flags);
}
