
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct lp_gpio {int lock; int chip; } ;
struct irq_data {int dummy; } ;
struct gpio_chip {int dummy; } ;


 int BIT (int) ;
 int LP_INT_ENABLE ;
 struct lp_gpio* gpiochip_get_data (struct gpio_chip*) ;
 int inl (unsigned long) ;
 struct gpio_chip* irq_data_get_irq_chip_data (struct irq_data*) ;
 int irqd_to_hwirq (struct irq_data*) ;
 unsigned long lp_gpio_reg (int *,int,int ) ;
 int outl (int,unsigned long) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void lp_irq_enable(struct irq_data *d)
{
 struct gpio_chip *gc = irq_data_get_irq_chip_data(d);
 struct lp_gpio *lg = gpiochip_get_data(gc);
 u32 hwirq = irqd_to_hwirq(d);
 unsigned long reg = lp_gpio_reg(&lg->chip, hwirq, LP_INT_ENABLE);
 unsigned long flags;

 spin_lock_irqsave(&lg->lock, flags);
 outl(inl(reg) | BIT(hwirq % 32), reg);
 spin_unlock_irqrestore(&lg->lock, flags);
}
