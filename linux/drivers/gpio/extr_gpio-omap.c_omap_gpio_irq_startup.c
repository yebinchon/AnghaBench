
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct irq_data {unsigned int hwirq; } ;
struct gpio_bank {int lock; int irq_usage; int mod_usage; } ;


 int BIT (unsigned int) ;
 int LINE_USED (int ,unsigned int) ;
 int omap_enable_gpio_module (struct gpio_bank*,unsigned int) ;
 int omap_gpio_unmask_irq (struct irq_data*) ;
 struct gpio_bank* omap_irq_data_get_bank (struct irq_data*) ;
 int omap_set_gpio_direction (struct gpio_bank*,unsigned int,int) ;
 int raw_spin_lock_irqsave (int *,unsigned long) ;
 int raw_spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static unsigned int omap_gpio_irq_startup(struct irq_data *d)
{
 struct gpio_bank *bank = omap_irq_data_get_bank(d);
 unsigned long flags;
 unsigned offset = d->hwirq;

 raw_spin_lock_irqsave(&bank->lock, flags);

 if (!LINE_USED(bank->mod_usage, offset))
  omap_set_gpio_direction(bank, offset, 1);
 omap_enable_gpio_module(bank, offset);
 bank->irq_usage |= BIT(offset);

 raw_spin_unlock_irqrestore(&bank->lock, flags);
 omap_gpio_unmask_irq(d);

 return 0;
}
