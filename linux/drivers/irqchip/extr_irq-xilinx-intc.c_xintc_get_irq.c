
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int root_domain; } ;


 int IVR ;
 unsigned int irq_find_mapping (int ,unsigned int) ;
 int pr_debug (char*,unsigned int,unsigned int) ;
 TYPE_1__* xintc_irqc ;
 unsigned int xintc_read (int ) ;

unsigned int xintc_get_irq(void)
{
 unsigned int hwirq, irq = -1;

 hwirq = xintc_read(IVR);
 if (hwirq != -1U)
  irq = irq_find_mapping(xintc_irqc->root_domain, hwirq);

 pr_debug("irq-xilinx: hwirq=%d, irq=%d\n", hwirq, irq);

 return irq;
}
