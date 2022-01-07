
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct mxc_gpio_port {int both_edges; int domain; } ;


 int fls (int) ;
 int generic_handle_irq (int ) ;
 int irq_find_mapping (int ,int) ;
 int mxc_flip_edge (struct mxc_gpio_port*,int) ;

__attribute__((used)) static void mxc_gpio_irq_handler(struct mxc_gpio_port *port, u32 irq_stat)
{
 while (irq_stat != 0) {
  int irqoffset = fls(irq_stat) - 1;

  if (port->both_edges & (1 << irqoffset))
   mxc_flip_edge(port, irqoffset);

  generic_handle_irq(irq_find_mapping(port->domain, irqoffset));

  irq_stat &= ~(1 << irqoffset);
 }
}
