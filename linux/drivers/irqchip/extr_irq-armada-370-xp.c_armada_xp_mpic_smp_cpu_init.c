
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 scalar_t__ ARMADA_370_XP_INT_CLEAR_MASK_OFFS ;
 scalar_t__ ARMADA_370_XP_INT_CONTROL ;
 scalar_t__ ARMADA_370_XP_INT_SET_MASK_OFFS ;
 scalar_t__ ARMADA_370_XP_IN_DRBEL_CAUSE_OFFS ;
 scalar_t__ ARMADA_370_XP_IN_DRBEL_MSK_OFFS ;
 int IPI_DOORBELL_MASK ;
 scalar_t__ main_int_base ;
 scalar_t__ per_cpu_int_base ;
 int readl (scalar_t__) ;
 int writel (int,scalar_t__) ;

__attribute__((used)) static void armada_xp_mpic_smp_cpu_init(void)
{
 u32 control;
 int nr_irqs, i;

 control = readl(main_int_base + ARMADA_370_XP_INT_CONTROL);
 nr_irqs = (control >> 2) & 0x3ff;

 for (i = 0; i < nr_irqs; i++)
  writel(i, per_cpu_int_base + ARMADA_370_XP_INT_SET_MASK_OFFS);


 writel(0, per_cpu_int_base + ARMADA_370_XP_IN_DRBEL_CAUSE_OFFS);


 writel(IPI_DOORBELL_MASK, per_cpu_int_base +
  ARMADA_370_XP_IN_DRBEL_MSK_OFFS);


 writel(0, per_cpu_int_base + ARMADA_370_XP_INT_CLEAR_MASK_OFFS);
}
