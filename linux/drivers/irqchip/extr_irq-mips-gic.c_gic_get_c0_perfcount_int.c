
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int GIC_LOCAL_INT_PERFCTR ;
 int GIC_LOCAL_TO_HWIRQ (int ) ;
 int MIPS_CPU_IRQ_BASE ;
 scalar_t__ cp0_perfcount_irq ;
 int gic_irq_domain ;
 int gic_local_irq_is_routable (int ) ;
 int irq_create_mapping (int ,int ) ;

int gic_get_c0_perfcount_int(void)
{
 if (!gic_local_irq_is_routable(GIC_LOCAL_INT_PERFCTR)) {

  if (cp0_perfcount_irq < 0)
   return -1;
  return MIPS_CPU_IRQ_BASE + cp0_perfcount_irq;
 }
 return irq_create_mapping(gic_irq_domain,
      GIC_LOCAL_TO_HWIRQ(GIC_LOCAL_INT_PERFCTR));
}
