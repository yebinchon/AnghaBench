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
struct intel_vgpu {int failsafe; int pv_notified; int /*<<< orphan*/  id; scalar_t__ resetting_eng; int /*<<< orphan*/  vgpu_lock; struct intel_gvt* gvt; } ;
struct intel_gvt_workload_scheduler {int /*<<< orphan*/ * current_vgpu; } ;
struct intel_gvt {struct intel_gvt_workload_scheduler scheduler; } ;
typedef  scalar_t__ intel_engine_mask_t ;

/* Variables and functions */
 scalar_t__ ALL_ENGINES ; 
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int /*<<< orphan*/  FUNC1 (struct intel_vgpu*) ; 
 int /*<<< orphan*/  FUNC2 (struct intel_vgpu*) ; 
 int /*<<< orphan*/  FUNC3 (struct intel_vgpu*) ; 
 int /*<<< orphan*/  FUNC4 (struct intel_vgpu*) ; 
 int /*<<< orphan*/  FUNC5 (struct intel_vgpu*) ; 
 int /*<<< orphan*/  FUNC6 (struct intel_vgpu*,int) ; 
 int /*<<< orphan*/  FUNC7 (struct intel_vgpu*) ; 
 int /*<<< orphan*/  FUNC8 (struct intel_vgpu*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC9 (struct intel_vgpu*,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct intel_vgpu*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (struct intel_vgpu*) ; 

void FUNC14(struct intel_vgpu *vgpu, bool dmlr,
				 intel_engine_mask_t engine_mask)
{
	struct intel_gvt *gvt = vgpu->gvt;
	struct intel_gvt_workload_scheduler *scheduler = &gvt->scheduler;
	intel_engine_mask_t resetting_eng = dmlr ? ALL_ENGINES : engine_mask;

	FUNC0("------------------------------------------\n");
	FUNC0("resseting vgpu%d, dmlr %d, engine_mask %08x\n",
		     vgpu->id, dmlr, engine_mask);

	vgpu->resetting_eng = resetting_eng;

	FUNC10(vgpu);
	/*
	 * The current_vgpu will set to NULL after stopping the
	 * scheduler when the reset is triggered by current vgpu.
	 */
	if (scheduler->current_vgpu == NULL) {
		FUNC12(&vgpu->vgpu_lock);
		FUNC1(vgpu);
		FUNC11(&vgpu->vgpu_lock);
	}

	FUNC8(vgpu, resetting_eng);
	/* full GPU reset or device model level reset */
	if (engine_mask == ALL_ENGINES || dmlr) {
		FUNC9(vgpu, ALL_ENGINES, 0);
		FUNC2(vgpu);
		/*fence will not be reset during virtual reset */
		if (dmlr) {
			FUNC5(vgpu);
			FUNC7(vgpu);
		}

		FUNC6(vgpu, dmlr);
		FUNC13(vgpu);
		FUNC4(vgpu);

		if (dmlr) {
			FUNC3(vgpu);
			/* only reset the failsafe mode when dmlr reset */
			vgpu->failsafe = false;
			vgpu->pv_notified = false;
		}
	}

	vgpu->resetting_eng = 0;
	FUNC0("reset vgpu%d done\n", vgpu->id);
	FUNC0("------------------------------------------\n");
}