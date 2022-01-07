
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intel_gt {int i915; } ;


 int INTEL_GEN (int ) ;
 int intel_gtt_chipset_flush () ;
 int wmb () ;

void intel_gt_chipset_flush(struct intel_gt *gt)
{
 wmb();
 if (INTEL_GEN(gt->i915) < 6)
  intel_gtt_chipset_flush();
}
