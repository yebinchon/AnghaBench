
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct irq_data {int dummy; } ;
struct idio_16_gpio {unsigned long irq_mask; int lock; TYPE_1__* reg; } ;
struct gpio_chip {int dummy; } ;
struct TYPE_2__ {int irq_ctl; } ;


 unsigned long BIT (int ) ;
 struct idio_16_gpio* gpiochip_get_data (struct gpio_chip*) ;
 int ioread8 (int *) ;
 struct gpio_chip* irq_data_get_irq_chip_data (struct irq_data*) ;
 int irqd_to_hwirq (struct irq_data*) ;
 int raw_spin_lock_irqsave (int *,unsigned long) ;
 int raw_spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void idio_16_irq_unmask(struct irq_data *data)
{
 struct gpio_chip *chip = irq_data_get_irq_chip_data(data);
 struct idio_16_gpio *const idio16gpio = gpiochip_get_data(chip);
 const unsigned long mask = BIT(irqd_to_hwirq(data));
 const unsigned long prev_irq_mask = idio16gpio->irq_mask;
 unsigned long flags;

 idio16gpio->irq_mask |= mask;

 if (!prev_irq_mask) {
  raw_spin_lock_irqsave(&idio16gpio->lock, flags);

  ioread8(&idio16gpio->reg->irq_ctl);

  raw_spin_unlock_irqrestore(&idio16gpio->lock, flags);
 }
}
