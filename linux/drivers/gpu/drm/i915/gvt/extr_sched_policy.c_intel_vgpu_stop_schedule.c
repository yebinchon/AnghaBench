
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct vgpu_sched_data {int active; } ;
struct intel_vgpu {TYPE_2__* gvt; int id; struct vgpu_sched_data* sched_data; } ;
struct intel_gvt_workload_scheduler {int need_reschedule; int mmio_context_lock; struct intel_vgpu** engine_owner; struct intel_vgpu* current_vgpu; struct intel_vgpu* next_vgpu; TYPE_1__* sched_ops; } ;
struct drm_i915_private {int runtime_pm; } ;
struct TYPE_4__ {int sched_lock; struct drm_i915_private* dev_priv; struct intel_gvt_workload_scheduler scheduler; } ;
struct TYPE_3__ {int (* stop_schedule ) (struct intel_vgpu*) ;} ;


 int I915_NUM_ENGINES ;
 int gvt_dbg_core (char*,int ) ;
 int intel_gvt_switch_mmio (struct intel_vgpu*,int *,int) ;
 int intel_runtime_pm_get (int *) ;
 int intel_runtime_pm_put_unchecked (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;
 int stub1 (struct intel_vgpu*) ;

void intel_vgpu_stop_schedule(struct intel_vgpu *vgpu)
{
 struct intel_gvt_workload_scheduler *scheduler =
  &vgpu->gvt->scheduler;
 int ring_id;
 struct vgpu_sched_data *vgpu_data = vgpu->sched_data;
 struct drm_i915_private *dev_priv = vgpu->gvt->dev_priv;

 if (!vgpu_data->active)
  return;

 gvt_dbg_core("vgpu%d: stop schedule\n", vgpu->id);

 mutex_lock(&vgpu->gvt->sched_lock);
 scheduler->sched_ops->stop_schedule(vgpu);

 if (scheduler->next_vgpu == vgpu)
  scheduler->next_vgpu = ((void*)0);

 if (scheduler->current_vgpu == vgpu) {

  scheduler->need_reschedule = 1;
  scheduler->current_vgpu = ((void*)0);
 }

 intel_runtime_pm_get(&dev_priv->runtime_pm);
 spin_lock_bh(&scheduler->mmio_context_lock);
 for (ring_id = 0; ring_id < I915_NUM_ENGINES; ring_id++) {
  if (scheduler->engine_owner[ring_id] == vgpu) {
   intel_gvt_switch_mmio(vgpu, ((void*)0), ring_id);
   scheduler->engine_owner[ring_id] = ((void*)0);
  }
 }
 spin_unlock_bh(&scheduler->mmio_context_lock);
 intel_runtime_pm_put_unchecked(&dev_priv->runtime_pm);
 mutex_unlock(&vgpu->gvt->sched_lock);
}
