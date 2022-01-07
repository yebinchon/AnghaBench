
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int struct_mutex; } ;
struct drm_i915_private {TYPE_1__ drm; int gt; } ;


 int GEM_TRACE (char*,unsigned int,char*,long,char*) ;
 unsigned int I915_WAIT_LOCKED ;
 long MAX_SCHEDULE_TIMEOUT ;
 int i915_retire_requests (struct drm_i915_private*) ;
 int intel_gt_pm_is_awake (int *) ;
 int lockdep_assert_held (int *) ;
 long wait_for_timelines (struct drm_i915_private*,unsigned int,long) ;

int i915_gem_wait_for_idle(struct drm_i915_private *i915,
      unsigned int flags, long timeout)
{

 if (!intel_gt_pm_is_awake(&i915->gt))
  return 0;

 GEM_TRACE("flags=%x (%s), timeout=%ld%s\n",
    flags, flags & I915_WAIT_LOCKED ? "locked" : "unlocked",
    timeout, timeout == MAX_SCHEDULE_TIMEOUT ? " (forever)" : "");

 timeout = wait_for_timelines(i915, flags, timeout);
 if (timeout < 0)
  return timeout;

 if (flags & I915_WAIT_LOCKED) {
  lockdep_assert_held(&i915->drm.struct_mutex);

  i915_retire_requests(i915);
 }

 return 0;
}
