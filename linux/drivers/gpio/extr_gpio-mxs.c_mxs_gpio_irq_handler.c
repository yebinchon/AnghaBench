
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct mxs_gpio_port {int both_edges; int domain; scalar_t__ base; } ;
struct TYPE_4__ {TYPE_1__* chip; } ;
struct irq_desc {TYPE_2__ irq_data; } ;
struct TYPE_3__ {int (* irq_ack ) (TYPE_2__*) ;} ;


 scalar_t__ PINCTRL_IRQEN (struct mxs_gpio_port*) ;
 scalar_t__ PINCTRL_IRQSTAT (struct mxs_gpio_port*) ;
 int fls (int) ;
 int generic_handle_irq (int ) ;
 struct mxs_gpio_port* irq_desc_get_handler_data (struct irq_desc*) ;
 int irq_find_mapping (int ,int) ;
 int mxs_flip_edge (struct mxs_gpio_port*,int) ;
 int readl (scalar_t__) ;
 int stub1 (TYPE_2__*) ;

__attribute__((used)) static void mxs_gpio_irq_handler(struct irq_desc *desc)
{
 u32 irq_stat;
 struct mxs_gpio_port *port = irq_desc_get_handler_data(desc);

 desc->irq_data.chip->irq_ack(&desc->irq_data);

 irq_stat = readl(port->base + PINCTRL_IRQSTAT(port)) &
   readl(port->base + PINCTRL_IRQEN(port));

 while (irq_stat != 0) {
  int irqoffset = fls(irq_stat) - 1;
  if (port->both_edges & (1 << irqoffset))
   mxs_flip_edge(port, irqoffset);

  generic_handle_irq(irq_find_mapping(port->domain, irqoffset));
  irq_stat &= ~(1 << irqoffset);
 }
}
