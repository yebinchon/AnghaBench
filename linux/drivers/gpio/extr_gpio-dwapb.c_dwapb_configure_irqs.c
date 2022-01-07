
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {void* mask; void* ack; } ;
struct TYPE_3__ {int irq_set_wake; int irq_release_resources; int irq_request_resources; int irq_disable; int irq_enable; int irq_set_type; int irq_unmask; int irq_mask; int irq_ack; } ;
struct irq_chip_type {int handler; void* type; TYPE_2__ regs; TYPE_1__ chip; } ;
struct irq_chip_generic {struct irq_chip_type* chip_types; struct dwapb_gpio* private; int reg_base; } ;
struct gpio_chip {unsigned int ngpio; int to_irq; } ;
struct fwnode_handle {int dummy; } ;
struct dwapb_port_property {int ngpio; scalar_t__* irq; int irq_shared; struct fwnode_handle* fwnode; } ;
struct dwapb_gpio_port {struct gpio_chip gc; } ;
struct dwapb_gpio {int * domain; int dev; int regs; } ;


 int GPIO_INTMASK ;
 int GPIO_PORTA_EOI ;
 int IRQF_SHARED ;
 int IRQ_GC_INIT_NESTED_LOCK ;
 int IRQ_NOREQUEST ;
 void* IRQ_TYPE_EDGE_BOTH ;
 void* IRQ_TYPE_LEVEL_MASK ;
 int dev_err (int ,char*) ;
 int dev_info (int ,char*) ;
 int devm_request_irq (int ,scalar_t__,int ,int ,char*,struct dwapb_gpio*) ;
 int dwapb_gpio_to_irq ;
 int dwapb_irq_disable ;
 int dwapb_irq_enable ;
 int dwapb_irq_handler ;
 int dwapb_irq_handler_mfd ;
 int dwapb_irq_relres ;
 int dwapb_irq_reqres ;
 int dwapb_irq_set_type ;
 int dwapb_irq_set_wake ;
 void* gpio_reg_convert (struct dwapb_gpio*,int ) ;
 int handle_edge_irq ;
 int handle_level_irq ;
 int irq_alloc_domain_generic_chips (int *,unsigned int,int,char*,int ,int ,int ,int ) ;
 int irq_create_mapping (int *,unsigned int) ;
 int * irq_domain_create_linear (struct fwnode_handle*,unsigned int,int *,struct dwapb_gpio*) ;
 int irq_domain_remove (int *) ;
 int irq_gc_ack_set_bit ;
 int irq_gc_mask_clr_bit ;
 int irq_gc_mask_set_bit ;
 int irq_generic_chip_ops ;
 struct irq_chip_generic* irq_get_domain_generic_chip (int *,int ) ;
 int irq_set_chained_handler_and_data (scalar_t__,int ,struct dwapb_gpio*) ;

__attribute__((used)) static void dwapb_configure_irqs(struct dwapb_gpio *gpio,
     struct dwapb_gpio_port *port,
     struct dwapb_port_property *pp)
{
 struct gpio_chip *gc = &port->gc;
 struct fwnode_handle *fwnode = pp->fwnode;
 struct irq_chip_generic *irq_gc = ((void*)0);
 unsigned int hwirq, ngpio = gc->ngpio;
 struct irq_chip_type *ct;
 int err, i;

 gpio->domain = irq_domain_create_linear(fwnode, ngpio,
       &irq_generic_chip_ops, gpio);
 if (!gpio->domain)
  return;

 err = irq_alloc_domain_generic_chips(gpio->domain, ngpio, 2,
          "gpio-dwapb", handle_level_irq,
          IRQ_NOREQUEST, 0,
          IRQ_GC_INIT_NESTED_LOCK);
 if (err) {
  dev_info(gpio->dev, "irq_alloc_domain_generic_chips failed\n");
  irq_domain_remove(gpio->domain);
  gpio->domain = ((void*)0);
  return;
 }

 irq_gc = irq_get_domain_generic_chip(gpio->domain, 0);
 if (!irq_gc) {
  irq_domain_remove(gpio->domain);
  gpio->domain = ((void*)0);
  return;
 }

 irq_gc->reg_base = gpio->regs;
 irq_gc->private = gpio;

 for (i = 0; i < 2; i++) {
  ct = &irq_gc->chip_types[i];
  ct->chip.irq_ack = irq_gc_ack_set_bit;
  ct->chip.irq_mask = irq_gc_mask_set_bit;
  ct->chip.irq_unmask = irq_gc_mask_clr_bit;
  ct->chip.irq_set_type = dwapb_irq_set_type;
  ct->chip.irq_enable = dwapb_irq_enable;
  ct->chip.irq_disable = dwapb_irq_disable;
  ct->chip.irq_request_resources = dwapb_irq_reqres;
  ct->chip.irq_release_resources = dwapb_irq_relres;



  ct->regs.ack = gpio_reg_convert(gpio, GPIO_PORTA_EOI);
  ct->regs.mask = gpio_reg_convert(gpio, GPIO_INTMASK);
  ct->type = IRQ_TYPE_LEVEL_MASK;
 }

 irq_gc->chip_types[0].type = IRQ_TYPE_LEVEL_MASK;
 irq_gc->chip_types[1].type = IRQ_TYPE_EDGE_BOTH;
 irq_gc->chip_types[1].handler = handle_edge_irq;

 if (!pp->irq_shared) {
  int i;

  for (i = 0; i < pp->ngpio; i++) {
   if (pp->irq[i] >= 0)
    irq_set_chained_handler_and_data(pp->irq[i],
      dwapb_irq_handler, gpio);
  }
 } else {




  err = devm_request_irq(gpio->dev, pp->irq[0],
           dwapb_irq_handler_mfd,
           IRQF_SHARED, "gpio-dwapb-mfd", gpio);
  if (err) {
   dev_err(gpio->dev, "error requesting IRQ\n");
   irq_domain_remove(gpio->domain);
   gpio->domain = ((void*)0);
   return;
  }
 }

 for (hwirq = 0 ; hwirq < ngpio ; hwirq++)
  irq_create_mapping(gpio->domain, hwirq);

 port->gc.to_irq = dwapb_gpio_to_irq;
}
