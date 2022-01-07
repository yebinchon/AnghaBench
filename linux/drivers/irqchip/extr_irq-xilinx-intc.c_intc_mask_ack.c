
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct irq_data {int hwirq; } ;


 int CIE ;
 int IAR ;
 int pr_debug (char*,int) ;
 int xintc_write (int ,unsigned long) ;

__attribute__((used)) static void intc_mask_ack(struct irq_data *d)
{
 unsigned long mask = 1 << d->hwirq;

 pr_debug("irq-xilinx: disable_and_ack: %ld\n", d->hwirq);
 xintc_write(CIE, mask);
 xintc_write(IAR, mask);
}
