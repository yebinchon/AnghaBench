
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gpio_chip {int (* read_reg ) (scalar_t__) ;int (* write_reg ) (scalar_t__,int) ;} ;
struct mpc8xxx_gpio_chip {int lock; scalar_t__ regs; struct gpio_chip gc; } ;
struct irq_data {int dummy; } ;


 scalar_t__ GPIO_IMR ;
 struct mpc8xxx_gpio_chip* irq_data_get_irq_chip_data (struct irq_data*) ;
 int irqd_to_hwirq (struct irq_data*) ;
 int mpc_pin2mask (int ) ;
 int raw_spin_lock_irqsave (int *,unsigned long) ;
 int raw_spin_unlock_irqrestore (int *,unsigned long) ;
 int stub1 (scalar_t__,int) ;
 int stub2 (scalar_t__) ;

__attribute__((used)) static void mpc8xxx_irq_unmask(struct irq_data *d)
{
 struct mpc8xxx_gpio_chip *mpc8xxx_gc = irq_data_get_irq_chip_data(d);
 struct gpio_chip *gc = &mpc8xxx_gc->gc;
 unsigned long flags;

 raw_spin_lock_irqsave(&mpc8xxx_gc->lock, flags);

 gc->write_reg(mpc8xxx_gc->regs + GPIO_IMR,
  gc->read_reg(mpc8xxx_gc->regs + GPIO_IMR)
  | mpc_pin2mask(irqd_to_hwirq(d)));

 raw_spin_unlock_irqrestore(&mpc8xxx_gc->lock, flags);
}
