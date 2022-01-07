
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xlp_gpio_priv {int lock; int gpio_enabled_mask; int gpio_intr_en; } ;
struct irq_data {int hwirq; } ;
struct gpio_chip {int dummy; } ;


 int __set_bit (int ,int ) ;
 struct xlp_gpio_priv* gpiochip_get_data (struct gpio_chip*) ;
 struct gpio_chip* irq_data_get_irq_chip_data (struct irq_data*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int xlp_gpio_set_reg (int ,int ,int) ;

__attribute__((used)) static void xlp_gpio_irq_unmask(struct irq_data *d)
{
 struct gpio_chip *gc = irq_data_get_irq_chip_data(d);
 struct xlp_gpio_priv *priv = gpiochip_get_data(gc);
 unsigned long flags;

 spin_lock_irqsave(&priv->lock, flags);
 xlp_gpio_set_reg(priv->gpio_intr_en, d->hwirq, 0x1);
 __set_bit(d->hwirq, priv->gpio_enabled_mask);
 spin_unlock_irqrestore(&priv->lock, flags);
}
