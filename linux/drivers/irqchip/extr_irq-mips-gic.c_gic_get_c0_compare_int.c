
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int GIC_LOCAL_INT_TIMER ;
 int GIC_LOCAL_TO_HWIRQ (int ) ;
 int MIPS_CPU_IRQ_BASE ;
 int cp0_compare_irq ;
 int gic_irq_domain ;
 int gic_local_irq_is_routable (int ) ;
 int irq_create_mapping (int ,int ) ;

int gic_get_c0_compare_int(void)
{
 if (!gic_local_irq_is_routable(GIC_LOCAL_INT_TIMER))
  return MIPS_CPU_IRQ_BASE + cp0_compare_irq;
 return irq_create_mapping(gic_irq_domain,
      GIC_LOCAL_TO_HWIRQ(GIC_LOCAL_INT_TIMER));
}
