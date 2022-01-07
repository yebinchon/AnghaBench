
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct intel_gt {int i915; } ;
struct TYPE_2__ {scalar_t__ gpu_reset_clobbers_display; } ;


 int ALL_ENGINES ;
 TYPE_1__* INTEL_INFO (int ) ;
 scalar_t__ __intel_gt_reset (struct intel_gt*,int ) ;

__attribute__((used)) static bool reset_engines(struct intel_gt *gt)
{
 if (INTEL_INFO(gt->i915)->gpu_reset_clobbers_display)
  return 0;

 return __intel_gt_reset(gt, ALL_ENGINES) == 0;
}
