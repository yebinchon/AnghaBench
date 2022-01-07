
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct irq_data {unsigned int hwirq; } ;
struct gpio_bank {int lock; int mod_usage; int irq_usage; } ;


 int BIT (unsigned int) ;
 int IRQ_TYPE_NONE ;
 int LINE_USED (int ,unsigned int) ;
 int omap_clear_gpio_debounce (struct gpio_bank*,unsigned int) ;
 int omap_clear_gpio_irqstatus (struct gpio_bank*,unsigned int) ;
 int omap_disable_gpio_module (struct gpio_bank*,unsigned int) ;
 struct gpio_bank* omap_irq_data_get_bank (struct irq_data*) ;
 int omap_set_gpio_irqenable (struct gpio_bank*,unsigned int,int ) ;
 int omap_set_gpio_triggering (struct gpio_bank*,unsigned int,int ) ;
 int raw_spin_lock_irqsave (int *,unsigned long) ;
 int raw_spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void omap_gpio_irq_shutdown(struct irq_data *d)
{
 struct gpio_bank *bank = omap_irq_data_get_bank(d);
 unsigned long flags;
 unsigned offset = d->hwirq;

 raw_spin_lock_irqsave(&bank->lock, flags);
 bank->irq_usage &= ~(BIT(offset));
 omap_set_gpio_triggering(bank, offset, IRQ_TYPE_NONE);
 omap_clear_gpio_irqstatus(bank, offset);
 omap_set_gpio_irqenable(bank, offset, 0);
 if (!LINE_USED(bank->mod_usage, offset))
  omap_clear_gpio_debounce(bank, offset);
 omap_disable_gpio_module(bank, offset);
 raw_spin_unlock_irqrestore(&bank->lock, flags);
}
