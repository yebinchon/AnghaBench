
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int dr; int edge_sel; int gdir; int imr; int icr2; int icr1; } ;
struct mxc_gpio_port {scalar_t__ base; TYPE_1__ gpio_saved_reg; int power_off; } ;


 scalar_t__ GPIO_DR ;
 scalar_t__ GPIO_EDGE_SEL ;
 scalar_t__ GPIO_GDIR ;
 scalar_t__ GPIO_ICR1 ;
 scalar_t__ GPIO_ICR2 ;
 scalar_t__ GPIO_IMR ;
 int writel (int ,scalar_t__) ;

__attribute__((used)) static void mxc_gpio_restore_regs(struct mxc_gpio_port *port)
{
 if (!port->power_off)
  return;

 writel(port->gpio_saved_reg.icr1, port->base + GPIO_ICR1);
 writel(port->gpio_saved_reg.icr2, port->base + GPIO_ICR2);
 writel(port->gpio_saved_reg.imr, port->base + GPIO_IMR);
 writel(port->gpio_saved_reg.gdir, port->base + GPIO_GDIR);
 writel(port->gpio_saved_reg.edge_sel, port->base + GPIO_EDGE_SEL);
 writel(port->gpio_saved_reg.dr, port->base + GPIO_DR);
}
