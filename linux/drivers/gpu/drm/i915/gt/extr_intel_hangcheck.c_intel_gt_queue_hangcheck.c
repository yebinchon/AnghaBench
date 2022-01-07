
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int work; } ;
struct intel_gt {TYPE_1__ hangcheck; } ;
struct TYPE_4__ {int enable_hangcheck; } ;


 int DRM_I915_HANGCHECK_JIFFIES ;
 TYPE_2__ i915_modparams ;
 int queue_delayed_work (int ,int *,unsigned long) ;
 unsigned long round_jiffies_up_relative (int ) ;
 int system_long_wq ;
 scalar_t__ unlikely (int) ;

void intel_gt_queue_hangcheck(struct intel_gt *gt)
{
 unsigned long delay;

 if (unlikely(!i915_modparams.enable_hangcheck))
  return;







 delay = round_jiffies_up_relative(DRM_I915_HANGCHECK_JIFFIES);
 queue_delayed_work(system_long_wq, &gt->hangcheck.work, delay);
}
