
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct irq_data {unsigned int hwirq; } ;
struct gpio_bank {int lock; TYPE_1__* regs; } ;
struct TYPE_2__ {int leveldetect0; } ;


 int EINVAL ;
 unsigned int IRQ_TYPE_EDGE_FALLING ;
 unsigned int IRQ_TYPE_EDGE_RISING ;
 unsigned int IRQ_TYPE_LEVEL_HIGH ;
 unsigned int IRQ_TYPE_LEVEL_LOW ;
 unsigned int IRQ_TYPE_SENSE_MASK ;
 int handle_level_irq ;
 int handle_simple_irq ;
 int irq_set_handler_locked (struct irq_data*,int ) ;
 int omap_gpio_init_irq (struct gpio_bank*,unsigned int) ;
 int omap_gpio_is_input (struct gpio_bank*,unsigned int) ;
 struct gpio_bank* omap_irq_data_get_bank (struct irq_data*) ;
 int omap_set_gpio_triggering (struct gpio_bank*,unsigned int,unsigned int) ;
 int raw_spin_lock_irqsave (int *,unsigned long) ;
 int raw_spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int omap_gpio_irq_type(struct irq_data *d, unsigned type)
{
 struct gpio_bank *bank = omap_irq_data_get_bank(d);
 int retval;
 unsigned long flags;
 unsigned offset = d->hwirq;

 if (type & ~IRQ_TYPE_SENSE_MASK)
  return -EINVAL;

 if (!bank->regs->leveldetect0 &&
  (type & (IRQ_TYPE_LEVEL_LOW|IRQ_TYPE_LEVEL_HIGH)))
  return -EINVAL;

 raw_spin_lock_irqsave(&bank->lock, flags);
 retval = omap_set_gpio_triggering(bank, offset, type);
 if (retval) {
  raw_spin_unlock_irqrestore(&bank->lock, flags);
  goto error;
 }
 omap_gpio_init_irq(bank, offset);
 if (!omap_gpio_is_input(bank, offset)) {
  raw_spin_unlock_irqrestore(&bank->lock, flags);
  retval = -EINVAL;
  goto error;
 }
 raw_spin_unlock_irqrestore(&bank->lock, flags);

 if (type & (IRQ_TYPE_LEVEL_LOW | IRQ_TYPE_LEVEL_HIGH))
  irq_set_handler_locked(d, handle_level_irq);
 else if (type & (IRQ_TYPE_EDGE_FALLING | IRQ_TYPE_EDGE_RISING))






  irq_set_handler_locked(d, handle_simple_irq);

 return 0;

error:
 return retval;
}
