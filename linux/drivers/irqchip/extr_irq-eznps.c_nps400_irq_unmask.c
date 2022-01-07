
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct irq_data {int dummy; } ;


 int AUX_IENABLE ;
 unsigned int irqd_to_hwirq (struct irq_data*) ;
 unsigned int read_aux_reg (int ) ;
 int write_aux_reg (int ,unsigned int) ;

__attribute__((used)) static void nps400_irq_unmask(struct irq_data *irqd)
{
 unsigned int ienb;
 unsigned int irq = irqd_to_hwirq(irqd);

 ienb = read_aux_reg(AUX_IENABLE);
 ienb |= (1 << irq);
 write_aux_reg(AUX_IENABLE, ienb);
}
