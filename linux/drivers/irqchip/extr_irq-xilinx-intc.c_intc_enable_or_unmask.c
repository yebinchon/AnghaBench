
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct irq_data {int hwirq; } ;


 int IAR ;
 int SIE ;
 scalar_t__ irqd_is_level_type (struct irq_data*) ;
 int pr_debug (char*,int) ;
 int xintc_write (int ,unsigned long) ;

__attribute__((used)) static void intc_enable_or_unmask(struct irq_data *d)
{
 unsigned long mask = 1 << d->hwirq;

 pr_debug("irq-xilinx: enable_or_unmask: %ld\n", d->hwirq);





 if (irqd_is_level_type(d))
  xintc_write(IAR, mask);

 xintc_write(SIE, mask);
}
