
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u64 ;
struct TYPE_4__ {int idle_work; int retire_work; } ;
struct TYPE_3__ {int struct_mutex; } ;
struct drm_i915_private {TYPE_2__ gem; int gt; TYPE_1__ drm; } ;


 int ALL_ENGINES ;
 int DRM_DEBUG (char*,int,int) ;
 int DROP_ACTIVE ;
 int DROP_ALL ;
 int DROP_BOUND ;
 int DROP_FREED ;
 int DROP_IDLE ;
 int DROP_RESET_ACTIVE ;
 int DROP_RESET_SEQNO ;
 int DROP_RETIRE ;
 int DROP_SHRINK_ALL ;
 int DROP_UNBOUND ;
 int GFP_KERNEL ;
 int I915_IDLE_ENGINES_TIMEOUT ;
 int I915_SHRINK_BOUND ;
 int I915_SHRINK_UNBOUND ;
 int I915_WAIT_INTERRUPTIBLE ;
 int I915_WAIT_LOCKED ;
 int LONG_MAX ;
 int MAX_SCHEDULE_TIMEOUT ;
 int flush_delayed_work (int *) ;
 int flush_work (int *) ;
 int fs_reclaim_acquire (int ) ;
 int fs_reclaim_release (int ) ;
 int i915_gem_drain_freed_objects (struct drm_i915_private*) ;
 int i915_gem_shrink (struct drm_i915_private*,int ,int *,int ) ;
 int i915_gem_shrink_all (struct drm_i915_private*) ;
 int i915_gem_wait_for_idle (struct drm_i915_private*,int,int ) ;
 int i915_retire_requests (struct drm_i915_private*) ;
 int intel_engines_are_idle (int *) ;
 int intel_gt_handle_error (int *,int ,int ,int *) ;
 int intel_gt_pm_wait_for_idle (int *) ;
 int intel_gt_set_wedged (int *) ;
 scalar_t__ intel_gt_terminally_wedged (int *) ;
 int mutex_lock_interruptible (int *) ;
 int mutex_unlock (int *) ;
 scalar_t__ wait_for (int ,int ) ;

__attribute__((used)) static int
i915_drop_caches_set(void *data, u64 val)
{
 struct drm_i915_private *i915 = data;

 DRM_DEBUG("Dropping caches: 0x%08llx [0x%08llx]\n",
    val, val & DROP_ALL);

 if (val & DROP_RESET_ACTIVE &&
     wait_for(intel_engines_are_idle(&i915->gt),
       I915_IDLE_ENGINES_TIMEOUT))
  intel_gt_set_wedged(&i915->gt);



 if (val & (DROP_ACTIVE | DROP_IDLE | DROP_RETIRE | DROP_RESET_SEQNO)) {
  int ret;

  ret = mutex_lock_interruptible(&i915->drm.struct_mutex);
  if (ret)
   return ret;







  if (ret == 0 && val & (DROP_IDLE | DROP_ACTIVE))
   ret = i915_gem_wait_for_idle(i915,
           I915_WAIT_INTERRUPTIBLE |
           I915_WAIT_LOCKED,
           MAX_SCHEDULE_TIMEOUT);

  if (ret == 0 && val & DROP_IDLE)
   ret = i915_gem_wait_for_idle(i915,
           I915_WAIT_INTERRUPTIBLE |
           I915_WAIT_LOCKED,
           MAX_SCHEDULE_TIMEOUT);

  if (val & DROP_RETIRE)
   i915_retire_requests(i915);

  mutex_unlock(&i915->drm.struct_mutex);

  if (ret == 0 && val & DROP_IDLE)
   ret = intel_gt_pm_wait_for_idle(&i915->gt);
 }

 if (val & DROP_RESET_ACTIVE && intel_gt_terminally_wedged(&i915->gt))
  intel_gt_handle_error(&i915->gt, ALL_ENGINES, 0, ((void*)0));

 fs_reclaim_acquire(GFP_KERNEL);
 if (val & DROP_BOUND)
  i915_gem_shrink(i915, LONG_MAX, ((void*)0), I915_SHRINK_BOUND);

 if (val & DROP_UNBOUND)
  i915_gem_shrink(i915, LONG_MAX, ((void*)0), I915_SHRINK_UNBOUND);

 if (val & DROP_SHRINK_ALL)
  i915_gem_shrink_all(i915);
 fs_reclaim_release(GFP_KERNEL);

 if (val & DROP_IDLE) {
  flush_delayed_work(&i915->gem.retire_work);
  flush_work(&i915->gem.idle_work);
 }

 if (val & DROP_FREED)
  i915_gem_drain_freed_objects(i915);

 return 0;
}
