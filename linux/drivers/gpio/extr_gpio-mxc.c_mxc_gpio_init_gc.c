
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct mxc_gpio_port {int dev; int base; } ;
struct TYPE_4__ {int mask; int ack; } ;
struct TYPE_3__ {int flags; int irq_set_wake; int irq_set_type; int irq_unmask; int irq_mask; int irq_ack; } ;
struct irq_chip_type {TYPE_2__ regs; TYPE_1__ chip; } ;
struct irq_chip_generic {struct irq_chip_type* chip_types; struct mxc_gpio_port* private; } ;


 int ENOMEM ;
 int GPIO_IMR ;
 int GPIO_ISR ;
 int IRQCHIP_MASK_ON_SUSPEND ;
 int IRQ_GC_INIT_NESTED_LOCK ;
 int IRQ_MSK (int) ;
 int IRQ_NOREQUEST ;
 struct irq_chip_generic* devm_irq_alloc_generic_chip (int ,char*,int,int,int ,int ) ;
 int devm_irq_setup_generic_chip (int ,struct irq_chip_generic*,int ,int ,int ,int ) ;
 int gpio_set_irq_type ;
 int gpio_set_wake_irq ;
 int handle_level_irq ;
 int irq_gc_ack_set_bit ;
 int irq_gc_mask_clr_bit ;
 int irq_gc_mask_set_bit ;

__attribute__((used)) static int mxc_gpio_init_gc(struct mxc_gpio_port *port, int irq_base)
{
 struct irq_chip_generic *gc;
 struct irq_chip_type *ct;
 int rv;

 gc = devm_irq_alloc_generic_chip(port->dev, "gpio-mxc", 1, irq_base,
      port->base, handle_level_irq);
 if (!gc)
  return -ENOMEM;
 gc->private = port;

 ct = gc->chip_types;
 ct->chip.irq_ack = irq_gc_ack_set_bit;
 ct->chip.irq_mask = irq_gc_mask_clr_bit;
 ct->chip.irq_unmask = irq_gc_mask_set_bit;
 ct->chip.irq_set_type = gpio_set_irq_type;
 ct->chip.irq_set_wake = gpio_set_wake_irq;
 ct->chip.flags = IRQCHIP_MASK_ON_SUSPEND;
 ct->regs.ack = GPIO_ISR;
 ct->regs.mask = GPIO_IMR;

 rv = devm_irq_setup_generic_chip(port->dev, gc, IRQ_MSK(32),
      IRQ_GC_INIT_NESTED_LOCK,
      IRQ_NOREQUEST, 0);

 return rv;
}
