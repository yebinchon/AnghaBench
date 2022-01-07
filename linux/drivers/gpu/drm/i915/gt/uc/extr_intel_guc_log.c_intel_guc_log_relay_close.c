
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int lock; int flush_work; } ;
struct intel_guc_log {TYPE_1__ relay; } ;
struct intel_guc {int dummy; } ;
struct drm_i915_private {int dummy; } ;
struct TYPE_4__ {struct drm_i915_private* i915; } ;


 int GEM_BUG_ON (int) ;
 int flush_work (int *) ;
 int guc_log_disable_flush_events (struct intel_guc_log*) ;
 int guc_log_relay_destroy (struct intel_guc_log*) ;
 int guc_log_unmap (struct intel_guc_log*) ;
 TYPE_2__* guc_to_gt (struct intel_guc*) ;
 int intel_guc_log_relay_enabled (struct intel_guc_log*) ;
 int intel_synchronize_irq (struct drm_i915_private*) ;
 struct intel_guc* log_to_guc (struct intel_guc_log*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

void intel_guc_log_relay_close(struct intel_guc_log *log)
{
 struct intel_guc *guc = log_to_guc(log);
 struct drm_i915_private *i915 = guc_to_gt(guc)->i915;

 guc_log_disable_flush_events(log);
 intel_synchronize_irq(i915);

 flush_work(&log->relay.flush_work);

 mutex_lock(&log->relay.lock);
 GEM_BUG_ON(!intel_guc_log_relay_enabled(log));
 guc_log_unmap(log);
 guc_log_relay_destroy(log);
 mutex_unlock(&log->relay.lock);
}
