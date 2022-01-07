
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * mir; int * ilr; int threshold; int idle; int protection; int sysconfig; } ;


 int INTCPS_NR_MIR_REGS ;
 scalar_t__ INTC_IDLE ;
 scalar_t__ INTC_ILR0 ;
 scalar_t__ INTC_MIR0 ;
 scalar_t__ INTC_PROTECTION ;
 scalar_t__ INTC_SYSCONFIG ;
 scalar_t__ INTC_THRESHOLD ;
 TYPE_1__ intc_context ;
 int intc_writel (scalar_t__,int ) ;
 int omap_nr_irqs ;

void omap_intc_restore_context(void)
{
 int i;

 intc_writel(INTC_SYSCONFIG, intc_context.sysconfig);
 intc_writel(INTC_PROTECTION, intc_context.protection);
 intc_writel(INTC_IDLE, intc_context.idle);
 intc_writel(INTC_THRESHOLD, intc_context.threshold);

 for (i = 0; i < omap_nr_irqs; i++)
  intc_writel(INTC_ILR0 + 0x4 * i,
    intc_context.ilr[i]);

 for (i = 0; i < INTCPS_NR_MIR_REGS; i++)
  intc_writel(INTC_MIR0 + 0x20 * i,
   intc_context.mir[i]);

}
