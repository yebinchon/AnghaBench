
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ws16c48_gpio {int irq_mask; int lock; scalar_t__ base; } ;
struct irq_data {int dummy; } ;
struct gpio_chip {int dummy; } ;


 unsigned int BIT (unsigned long const) ;
 struct ws16c48_gpio* gpiochip_get_data (struct gpio_chip*) ;
 struct gpio_chip* irq_data_get_irq_chip_data (struct irq_data*) ;
 unsigned long irqd_to_hwirq (struct irq_data*) ;
 int outb (int,scalar_t__) ;
 int raw_spin_lock_irqsave (int *,unsigned long) ;
 int raw_spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void ws16c48_irq_ack(struct irq_data *data)
{
 struct gpio_chip *chip = irq_data_get_irq_chip_data(data);
 struct ws16c48_gpio *const ws16c48gpio = gpiochip_get_data(chip);
 const unsigned long offset = irqd_to_hwirq(data);
 const unsigned port = offset / 8;
 const unsigned mask = BIT(offset % 8);
 unsigned long flags;
 unsigned port_state;


 if (port > 2)
  return;

 raw_spin_lock_irqsave(&ws16c48gpio->lock, flags);

 port_state = ws16c48gpio->irq_mask >> (8*port);

 outb(0x80, ws16c48gpio->base + 7);
 outb(port_state & ~mask, ws16c48gpio->base + 8 + port);
 outb(port_state | mask, ws16c48gpio->base + 8 + port);
 outb(0xC0, ws16c48gpio->base + 7);

 raw_spin_unlock_irqrestore(&ws16c48gpio->lock, flags);
}
