#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct vgpu_sched_data {int /*<<< orphan*/  lru_list; int /*<<< orphan*/  pri_sched; } ;
struct intel_vgpu {struct vgpu_sched_data* sched_data; } ;
struct intel_gvt_workload_scheduler {struct intel_vgpu* next_vgpu; } ;
struct intel_gvt {struct intel_vgpu* idle_vgpu; struct intel_gvt_workload_scheduler scheduler; } ;
struct gvt_sched_data {int /*<<< orphan*/  lru_runq_head; struct intel_gvt* gvt; } ;

/* Variables and functions */
 struct intel_vgpu* FUNC0 (struct gvt_sched_data*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct intel_gvt*) ; 

__attribute__((used)) static void FUNC5(struct gvt_sched_data *sched_data)
{
	struct intel_gvt *gvt = sched_data->gvt;
	struct intel_gvt_workload_scheduler *scheduler = &gvt->scheduler;
	struct vgpu_sched_data *vgpu_data;
	struct intel_vgpu *vgpu = NULL;

	/* no active vgpu or has already had a target */
	if (FUNC3(&sched_data->lru_runq_head) || scheduler->next_vgpu)
		goto out;

	vgpu = FUNC0(sched_data);
	if (vgpu) {
		scheduler->next_vgpu = vgpu;
		vgpu_data = vgpu->sched_data;
		if (!vgpu_data->pri_sched) {
			/* Move the last used vGPU to the tail of lru_list */
			FUNC2(&vgpu_data->lru_list);
			FUNC1(&vgpu_data->lru_list,
				      &sched_data->lru_runq_head);
		}
	} else {
		scheduler->next_vgpu = gvt->idle_vgpu;
	}
out:
	if (scheduler->next_vgpu)
		FUNC4(gvt);
}