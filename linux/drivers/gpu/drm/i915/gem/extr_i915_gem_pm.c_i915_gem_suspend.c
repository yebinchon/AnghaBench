
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int work; } ;
struct TYPE_8__ {int uc; TYPE_1__ hangcheck; } ;
struct TYPE_7__ {int struct_mutex; } ;
struct TYPE_6__ {int userfault_wakeref; } ;
struct drm_i915_private {TYPE_4__ gt; TYPE_3__ drm; int wq; TYPE_2__ ggtt; } ;


 int GEM_TRACE (char*) ;
 int cancel_delayed_work_sync (int *) ;
 int flush_workqueue (int ) ;
 int i915_gem_drain_freed_objects (struct drm_i915_private*) ;
 int intel_uc_suspend (int *) ;
 int intel_wakeref_auto (int *,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int switch_to_kernel_context_sync (TYPE_4__*) ;

void i915_gem_suspend(struct drm_i915_private *i915)
{
 GEM_TRACE("\n");

 intel_wakeref_auto(&i915->ggtt.userfault_wakeref, 0);
 flush_workqueue(i915->wq);

 mutex_lock(&i915->drm.struct_mutex);
 switch_to_kernel_context_sync(&i915->gt);

 mutex_unlock(&i915->drm.struct_mutex);

 cancel_delayed_work_sync(&i915->gt.hangcheck.work);

 i915_gem_drain_freed_objects(i915);

 intel_uc_suspend(&i915->gt.uc);
}
