
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gpio_chip {int (* write_reg ) (scalar_t__,int ) ;} ;
struct mpc8xxx_gpio_chip {scalar_t__ regs; struct gpio_chip gc; } ;
struct irq_data {int dummy; } ;


 scalar_t__ GPIO_IER ;
 struct mpc8xxx_gpio_chip* irq_data_get_irq_chip_data (struct irq_data*) ;
 int irqd_to_hwirq (struct irq_data*) ;
 int mpc_pin2mask (int ) ;
 int stub1 (scalar_t__,int ) ;

__attribute__((used)) static void mpc8xxx_irq_ack(struct irq_data *d)
{
 struct mpc8xxx_gpio_chip *mpc8xxx_gc = irq_data_get_irq_chip_data(d);
 struct gpio_chip *gc = &mpc8xxx_gc->gc;

 gc->write_reg(mpc8xxx_gc->regs + GPIO_IER,
        mpc_pin2mask(irqd_to_hwirq(d)));
}
