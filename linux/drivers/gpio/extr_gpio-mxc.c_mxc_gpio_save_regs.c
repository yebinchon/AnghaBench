
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {void* dr; void* edge_sel; void* gdir; void* imr; void* icr2; void* icr1; } ;
struct mxc_gpio_port {scalar_t__ base; TYPE_1__ gpio_saved_reg; int power_off; } ;


 scalar_t__ GPIO_DR ;
 scalar_t__ GPIO_EDGE_SEL ;
 scalar_t__ GPIO_GDIR ;
 scalar_t__ GPIO_ICR1 ;
 scalar_t__ GPIO_ICR2 ;
 scalar_t__ GPIO_IMR ;
 void* readl (scalar_t__) ;

__attribute__((used)) static void mxc_gpio_save_regs(struct mxc_gpio_port *port)
{
 if (!port->power_off)
  return;

 port->gpio_saved_reg.icr1 = readl(port->base + GPIO_ICR1);
 port->gpio_saved_reg.icr2 = readl(port->base + GPIO_ICR2);
 port->gpio_saved_reg.imr = readl(port->base + GPIO_IMR);
 port->gpio_saved_reg.gdir = readl(port->base + GPIO_GDIR);
 port->gpio_saved_reg.edge_sel = readl(port->base + GPIO_EDGE_SEL);
 port->gpio_saved_reg.dr = readl(port->base + GPIO_DR);
}
