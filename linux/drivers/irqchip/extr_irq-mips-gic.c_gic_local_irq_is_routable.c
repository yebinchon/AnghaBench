
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;







 int GIC_VX_CTL_FDC_ROUTABLE ;
 int GIC_VX_CTL_PERFCNT_ROUTABLE ;
 int GIC_VX_CTL_SWINT_ROUTABLE ;
 int GIC_VX_CTL_TIMER_ROUTABLE ;
 scalar_t__ cpu_has_veic ;
 int read_gic_vl_ctl () ;

__attribute__((used)) static bool gic_local_irq_is_routable(int intr)
{
 u32 vpe_ctl;


 if (cpu_has_veic)
  return 1;

 vpe_ctl = read_gic_vl_ctl();
 switch (intr) {
 case 128:
  return vpe_ctl & GIC_VX_CTL_TIMER_ROUTABLE;
 case 131:
  return vpe_ctl & GIC_VX_CTL_PERFCNT_ROUTABLE;
 case 132:
  return vpe_ctl & GIC_VX_CTL_FDC_ROUTABLE;
 case 130:
 case 129:
  return vpe_ctl & GIC_VX_CTL_SWINT_ROUTABLE;
 default:
  return 1;
 }
}
