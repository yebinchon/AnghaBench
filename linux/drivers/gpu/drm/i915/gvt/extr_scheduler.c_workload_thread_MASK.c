#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct workload_thread_param {int ring_id; struct intel_gvt* gvt; } ;
struct intel_vgpu_workload {struct intel_vgpu_workload* status; int /*<<< orphan*/  req; struct intel_vgpu_workload* ring_id; struct intel_vgpu* vgpu; } ;
struct intel_vgpu {int /*<<< orphan*/  id; } ;
struct intel_runtime_pm {int dummy; } ;
struct intel_gvt_workload_scheduler {int /*<<< orphan*/ * waitq; } ;
struct intel_gvt {TYPE_1__* dev_priv; struct intel_gvt_workload_scheduler scheduler; } ;
struct TYPE_2__ {int /*<<< orphan*/  uncore; struct intel_runtime_pm runtime_pm; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FORCEWAKE_ALL ; 
 int /*<<< orphan*/  GVT_FAILSAFE_GUEST_ERR ; 
 int FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  MAX_SCHEDULE_TIMEOUT ; 
 int /*<<< orphan*/  TASK_INTERRUPTIBLE ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct intel_gvt*,int) ; 
 int FUNC4 (struct intel_vgpu_workload*) ; 
 int /*<<< orphan*/  FUNC5 (struct intel_vgpu*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char*,int) ; 
 int /*<<< orphan*/  FUNC7 (char*,struct intel_vgpu_workload*,struct intel_vgpu_workload*,...) ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct intel_runtime_pm*) ; 
 int /*<<< orphan*/  FUNC11 (struct intel_runtime_pm*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (struct workload_thread_param*) ; 
 int /*<<< orphan*/  FUNC15 () ; 
 struct intel_vgpu_workload* FUNC16 (struct intel_gvt*,int) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC18 (struct intel_vgpu_workload*) ; 
 scalar_t__ FUNC19 (int) ; 
 int /*<<< orphan*/  wait ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  woken_wake_function ; 

__attribute__((used)) static int FUNC21(void *priv)
{
	struct workload_thread_param *p = (struct workload_thread_param *)priv;
	struct intel_gvt *gvt = p->gvt;
	int ring_id = p->ring_id;
	struct intel_gvt_workload_scheduler *scheduler = &gvt->scheduler;
	struct intel_vgpu_workload *workload = NULL;
	struct intel_vgpu *vgpu = NULL;
	int ret;
	bool need_force_wake = (FUNC1(gvt->dev_priv) >= 9);
	FUNC0(wait, woken_wake_function);
	struct intel_runtime_pm *rpm = &gvt->dev_priv->runtime_pm;

	FUNC14(p);

	FUNC6("workload thread for ring %d started\n", ring_id);

	while (!FUNC15()) {
		FUNC2(&scheduler->waitq[ring_id], &wait);
		do {
			workload = FUNC16(gvt, ring_id);
			if (workload)
				break;
			FUNC20(&wait, TASK_INTERRUPTIBLE,
				   MAX_SCHEDULE_TIMEOUT);
		} while (!FUNC15());
		FUNC17(&scheduler->waitq[ring_id], &wait);

		if (!workload)
			break;

		FUNC7("ring id %d next workload %p vgpu %d\n",
				workload->ring_id, workload,
				workload->vgpu->id);

		FUNC10(rpm);

		FUNC7("ring id %d will dispatch workload %p\n",
				workload->ring_id, workload);

		if (need_force_wake)
			FUNC12(&gvt->dev_priv->uncore,
					FORCEWAKE_ALL);
		/*
		 * Update the vReg of the vGPU which submitted this
		 * workload. The vGPU may use these registers for checking
		 * the context state. The value comes from GPU commands
		 * in this workload.
		 */
		FUNC18(workload);

		ret = FUNC4(workload);

		if (ret) {
			vgpu = workload->vgpu;
			FUNC8("fail to dispatch workload, skip\n");
			goto complete;
		}

		FUNC7("ring id %d wait workload %p\n",
				workload->ring_id, workload);
		FUNC9(workload->req, 0, MAX_SCHEDULE_TIMEOUT);

complete:
		FUNC7("will complete workload %p, status: %d\n",
				workload, workload->status);

		FUNC3(gvt, ring_id);

		if (need_force_wake)
			FUNC13(&gvt->dev_priv->uncore,
					FORCEWAKE_ALL);

		FUNC11(rpm);
		if (ret && (FUNC19(ret)))
			FUNC5(vgpu, GVT_FAILSAFE_GUEST_ERR);
	}
	return 0;
}