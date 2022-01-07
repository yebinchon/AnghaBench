
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {void** mir; void** ilr; void* threshold; void* idle; void* protection; void* sysconfig; } ;


 int INTCPS_NR_MIR_REGS ;
 scalar_t__ INTC_IDLE ;
 scalar_t__ INTC_ILR0 ;
 scalar_t__ INTC_MIR0 ;
 scalar_t__ INTC_PROTECTION ;
 scalar_t__ INTC_SYSCONFIG ;
 scalar_t__ INTC_THRESHOLD ;
 TYPE_1__ intc_context ;
 void* intc_readl (scalar_t__) ;
 int omap_nr_irqs ;

void omap_intc_save_context(void)
{
 int i;

 intc_context.sysconfig =
  intc_readl(INTC_SYSCONFIG);
 intc_context.protection =
  intc_readl(INTC_PROTECTION);
 intc_context.idle =
  intc_readl(INTC_IDLE);
 intc_context.threshold =
  intc_readl(INTC_THRESHOLD);

 for (i = 0; i < omap_nr_irqs; i++)
  intc_context.ilr[i] =
   intc_readl((INTC_ILR0 + 0x4 * i));
 for (i = 0; i < INTCPS_NR_MIR_REGS; i++)
  intc_context.mir[i] =
   intc_readl(INTC_MIR0 + (0x20 * i));
}
