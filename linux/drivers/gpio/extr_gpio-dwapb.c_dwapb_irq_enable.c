
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct irq_data {int hwirq; } ;
struct irq_chip_generic {struct dwapb_gpio* private; } ;
struct gpio_chip {int bgpio_lock; } ;
struct dwapb_gpio {TYPE_1__* ports; } ;
struct TYPE_2__ {struct gpio_chip gc; } ;


 int BIT (int ) ;
 int GPIO_INTEN ;
 int dwapb_read (struct dwapb_gpio*,int ) ;
 int dwapb_write (struct dwapb_gpio*,int ,int ) ;
 struct irq_chip_generic* irq_data_get_irq_chip_data (struct irq_data*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void dwapb_irq_enable(struct irq_data *d)
{
 struct irq_chip_generic *igc = irq_data_get_irq_chip_data(d);
 struct dwapb_gpio *gpio = igc->private;
 struct gpio_chip *gc = &gpio->ports[0].gc;
 unsigned long flags;
 u32 val;

 spin_lock_irqsave(&gc->bgpio_lock, flags);
 val = dwapb_read(gpio, GPIO_INTEN);
 val |= BIT(d->hwirq);
 dwapb_write(gpio, GPIO_INTEN, val);
 spin_unlock_irqrestore(&gc->bgpio_lock, flags);
}
