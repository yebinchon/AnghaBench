
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct irq_data {int hwirq; } ;


 int IAR ;
 int pr_debug (char*,int) ;
 int xintc_write (int ,int) ;

__attribute__((used)) static void intc_ack(struct irq_data *d)
{
 pr_debug("irq-xilinx: ack: %ld\n", d->hwirq);
 xintc_write(IAR, 1 << d->hwirq);
}
