
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct irq_data {unsigned int hwirq; } ;
struct gpio_bank {int lock; } ;


 int IRQ_TYPE_NONE ;
 struct gpio_bank* omap_irq_data_get_bank (struct irq_data*) ;
 int omap_set_gpio_irqenable (struct gpio_bank*,unsigned int,int ) ;
 int omap_set_gpio_triggering (struct gpio_bank*,unsigned int,int ) ;
 int raw_spin_lock_irqsave (int *,unsigned long) ;
 int raw_spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void omap_gpio_mask_irq(struct irq_data *d)
{
 struct gpio_bank *bank = omap_irq_data_get_bank(d);
 unsigned offset = d->hwirq;
 unsigned long flags;

 raw_spin_lock_irqsave(&bank->lock, flags);
 omap_set_gpio_triggering(bank, offset, IRQ_TYPE_NONE);
 omap_set_gpio_irqenable(bank, offset, 0);
 raw_spin_unlock_irqrestore(&bank->lock, flags);
}
