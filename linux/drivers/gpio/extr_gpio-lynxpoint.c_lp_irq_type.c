
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct TYPE_2__ {scalar_t__ ngpio; } ;
struct lp_gpio {int lock; TYPE_1__ chip; } ;
struct irq_data {int dummy; } ;
struct gpio_chip {int dummy; } ;


 int EINVAL ;
 scalar_t__ INT_INV_BIT ;
 unsigned int IRQ_TYPE_EDGE_FALLING ;
 unsigned int IRQ_TYPE_EDGE_RISING ;
 unsigned int IRQ_TYPE_LEVEL_HIGH ;
 unsigned int IRQ_TYPE_LEVEL_LOW ;
 int LP_CONFIG1 ;
 scalar_t__ TRIG_SEL_BIT ;
 struct lp_gpio* gpiochip_get_data (struct gpio_chip*) ;
 scalar_t__ inl (unsigned long) ;
 struct gpio_chip* irq_data_get_irq_chip_data (struct irq_data*) ;
 scalar_t__ irqd_to_hwirq (struct irq_data*) ;
 unsigned long lp_gpio_reg (TYPE_1__*,scalar_t__,int ) ;
 int outl (scalar_t__,unsigned long) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int lp_irq_type(struct irq_data *d, unsigned type)
{
 struct gpio_chip *gc = irq_data_get_irq_chip_data(d);
 struct lp_gpio *lg = gpiochip_get_data(gc);
 u32 hwirq = irqd_to_hwirq(d);
 unsigned long flags;
 u32 value;
 unsigned long reg = lp_gpio_reg(&lg->chip, hwirq, LP_CONFIG1);

 if (hwirq >= lg->chip.ngpio)
  return -EINVAL;

 spin_lock_irqsave(&lg->lock, flags);
 value = inl(reg);


 if (type & IRQ_TYPE_EDGE_RISING)
  value &= ~(TRIG_SEL_BIT | INT_INV_BIT);


 if (type & IRQ_TYPE_EDGE_FALLING)
  value = (value | INT_INV_BIT) & ~TRIG_SEL_BIT;


 if (type & IRQ_TYPE_LEVEL_LOW)
  value = (value | TRIG_SEL_BIT) & ~INT_INV_BIT;


 if (type & IRQ_TYPE_LEVEL_HIGH)
  value |= TRIG_SEL_BIT | INT_INV_BIT;

 outl(value, reg);
 spin_unlock_irqrestore(&lg->lock, flags);

 return 0;
}
