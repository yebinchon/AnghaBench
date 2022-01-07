
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u8 ;
typedef int u16 ;
struct TYPE_2__ {int guc; } ;
struct intel_gt {TYPE_1__ uc; } ;


 scalar_t__ const OTHER_GTPM_INSTANCE ;
 scalar_t__ const OTHER_GUC_INSTANCE ;
 int WARN_ONCE (int,char*,scalar_t__ const,int const) ;
 void gen11_rps_irq_handler (struct intel_gt*,int const) ;
 void guc_irq_handler (int *,int const) ;

__attribute__((used)) static void
gen11_other_irq_handler(struct intel_gt *gt, const u8 instance,
   const u16 iir)
{
 if (instance == OTHER_GUC_INSTANCE)
  return guc_irq_handler(&gt->uc.guc, iir);

 if (instance == OTHER_GTPM_INSTANCE)
  return gen11_rps_irq_handler(gt, iir);

 WARN_ONCE(1, "unhandled other interrupt instance=0x%x, iir=0x%x\n",
    instance, iir);
}
