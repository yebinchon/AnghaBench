
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct intel_gt {int pm_notifications; TYPE_1__* i915; int wakeref; } ;
struct TYPE_2__ {int runtime_pm; } ;


 int BLOCKING_INIT_NOTIFIER_HEAD (int *) ;
 int intel_wakeref_init (int *,int *,int *) ;
 int wf_ops ;

void intel_gt_pm_init_early(struct intel_gt *gt)
{
 intel_wakeref_init(&gt->wakeref, &gt->i915->runtime_pm, &wf_ops);

 BLOCKING_INIT_NOTIFIER_HEAD(&gt->pm_notifications);
}
