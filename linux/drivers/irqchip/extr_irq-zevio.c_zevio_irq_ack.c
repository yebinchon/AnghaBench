
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct irq_data {int dummy; } ;
struct irq_chip_regs {scalar_t__ ack; } ;
struct irq_chip_generic {scalar_t__ reg_base; } ;
struct TYPE_2__ {struct irq_chip_regs regs; } ;


 TYPE_1__* irq_data_get_chip_type (struct irq_data*) ;
 struct irq_chip_generic* irq_data_get_irq_chip_data (struct irq_data*) ;
 int readl (scalar_t__) ;

__attribute__((used)) static void zevio_irq_ack(struct irq_data *irqd)
{
 struct irq_chip_generic *gc = irq_data_get_irq_chip_data(irqd);
 struct irq_chip_regs *regs = &irq_data_get_chip_type(irqd)->regs;

 readl(gc->reg_base + regs->ack);
}
