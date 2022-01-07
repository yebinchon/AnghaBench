
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct intel_gt {TYPE_1__* i915; int uncore; } ;
struct TYPE_2__ {int gt_wa_list; } ;


 int wa_list_apply (int ,int *) ;

void intel_gt_apply_workarounds(struct intel_gt *gt)
{
 wa_list_apply(gt->uncore, &gt->i915->gt_wa_list);
}
