
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ARMADA_370_XP_INT_CAUSE_PERF (unsigned long) ;
 scalar_t__ ARMADA_370_XP_INT_FABRIC_MASK_OFFS ;
 unsigned long cpu_logical_map (int ) ;
 scalar_t__ per_cpu_int_base ;
 int smp_processor_id () ;
 int writel (int ,scalar_t__) ;

__attribute__((used)) static void armada_xp_mpic_perf_init(void)
{
 unsigned long cpuid = cpu_logical_map(smp_processor_id());


 writel(ARMADA_370_XP_INT_CAUSE_PERF(cpuid),
        per_cpu_int_base + ARMADA_370_XP_INT_FABRIC_MASK_OFFS);
}
