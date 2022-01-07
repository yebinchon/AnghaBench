
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int lock; int flush_work; } ;
struct intel_guc_log {TYPE_1__ relay; int vma; } ;


 int EEXIST ;
 int ENODEV ;
 int ENXIO ;
 int guc_log_enable_flush_events (struct intel_guc_log*) ;
 int guc_log_map (struct intel_guc_log*) ;
 int guc_log_relay_create (struct intel_guc_log*) ;
 int guc_log_relay_destroy (struct intel_guc_log*) ;
 int i915_has_memcpy_from_wc () ;
 scalar_t__ intel_guc_log_relay_enabled (struct intel_guc_log*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int queue_work (int ,int *) ;
 int system_highpri_wq ;

int intel_guc_log_relay_open(struct intel_guc_log *log)
{
 int ret;

 if (!log->vma)
  return -ENODEV;

 mutex_lock(&log->relay.lock);

 if (intel_guc_log_relay_enabled(log)) {
  ret = -EEXIST;
  goto out_unlock;
 }






 if (!i915_has_memcpy_from_wc()) {
  ret = -ENXIO;
  goto out_unlock;
 }

 ret = guc_log_relay_create(log);
 if (ret)
  goto out_unlock;

 ret = guc_log_map(log);
 if (ret)
  goto out_relay;

 mutex_unlock(&log->relay.lock);

 guc_log_enable_flush_events(log);






 queue_work(system_highpri_wq, &log->relay.flush_work);

 return 0;

out_relay:
 guc_log_relay_destroy(log);
out_unlock:
 mutex_unlock(&log->relay.lock);

 return ret;
}
