
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct intel_gt {int i915; } ;


 int const GEN11_GU_MISC_GSE ;
 int intel_opregion_asle_intr (int ) ;

__attribute__((used)) static void
gen11_gu_misc_irq_handler(struct intel_gt *gt, const u32 iir)
{
 if (iir & GEN11_GU_MISC_GSE)
  intel_opregion_asle_intr(gt->i915);
}
