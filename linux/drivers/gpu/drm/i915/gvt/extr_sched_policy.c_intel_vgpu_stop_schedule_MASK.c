#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct vgpu_sched_data {int /*<<< orphan*/  active; } ;
struct intel_vgpu {TYPE_2__* gvt; int /*<<< orphan*/  id; struct vgpu_sched_data* sched_data; } ;
struct intel_gvt_workload_scheduler {int need_reschedule; int /*<<< orphan*/  mmio_context_lock; struct intel_vgpu** engine_owner; struct intel_vgpu* current_vgpu; struct intel_vgpu* next_vgpu; TYPE_1__* sched_ops; } ;
struct drm_i915_private {int /*<<< orphan*/  runtime_pm; } ;
struct TYPE_4__ {int /*<<< orphan*/  sched_lock; struct drm_i915_private* dev_priv; struct intel_gvt_workload_scheduler scheduler; } ;
struct TYPE_3__ {int /*<<< orphan*/  (* stop_schedule ) (struct intel_vgpu*) ;} ;

/* Variables and functions */
 int I915_NUM_ENGINES ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct intel_vgpu*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (struct intel_vgpu*) ; 

void FUNC9(struct intel_vgpu *vgpu)
{
	struct intel_gvt_workload_scheduler *scheduler =
		&vgpu->gvt->scheduler;
	int ring_id;
	struct vgpu_sched_data *vgpu_data = vgpu->sched_data;
	struct drm_i915_private *dev_priv = vgpu->gvt->dev_priv;

	if (!vgpu_data->active)
		return;

	FUNC0("vgpu%d: stop schedule\n", vgpu->id);

	FUNC4(&vgpu->gvt->sched_lock);
	scheduler->sched_ops->stop_schedule(vgpu);

	if (scheduler->next_vgpu == vgpu)
		scheduler->next_vgpu = NULL;

	if (scheduler->current_vgpu == vgpu) {
		/* stop workload dispatching */
		scheduler->need_reschedule = true;
		scheduler->current_vgpu = NULL;
	}

	FUNC2(&dev_priv->runtime_pm);
	FUNC6(&scheduler->mmio_context_lock);
	for (ring_id = 0; ring_id < I915_NUM_ENGINES; ring_id++) {
		if (scheduler->engine_owner[ring_id] == vgpu) {
			FUNC1(vgpu, NULL, ring_id);
			scheduler->engine_owner[ring_id] = NULL;
		}
	}
	FUNC7(&scheduler->mmio_context_lock);
	FUNC3(&dev_priv->runtime_pm);
	FUNC5(&vgpu->gvt->sched_lock);
}