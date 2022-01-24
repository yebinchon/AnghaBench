#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_17__   TYPE_8__ ;
typedef  struct TYPE_16__   TYPE_4__ ;
typedef  struct TYPE_15__   TYPE_3__ ;
typedef  struct TYPE_14__   TYPE_2__ ;
typedef  struct TYPE_13__   TYPE_1__ ;
typedef  struct TYPE_12__   TYPE_10__ ;

/* Type definitions */
struct TYPE_15__ {int /*<<< orphan*/  mutex; int /*<<< orphan*/  flags; } ;
struct intel_gt {TYPE_3__ reset; TYPE_4__* i915; } ;
typedef  int /*<<< orphan*/  intel_engine_mask_t ;
struct TYPE_17__ {scalar_t__ reset; } ;
struct TYPE_14__ {int /*<<< orphan*/  dev; } ;
struct TYPE_13__ {int /*<<< orphan*/  reset_count; } ;
struct TYPE_16__ {TYPE_2__ drm; TYPE_1__ gpu_error; } ;
struct TYPE_12__ {scalar_t__ gpu_reset_clobbers_display; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  I915_RESET_BACKOFF ; 
 TYPE_10__* FUNC4 (TYPE_4__*) ; 
 int /*<<< orphan*/  TAINT_WARN ; 
 int /*<<< orphan*/  FUNC5 (struct intel_gt*) ; 
 int /*<<< orphan*/  FUNC6 (struct intel_gt*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,char*,char const*) ; 
 scalar_t__ FUNC11 (struct intel_gt*,int /*<<< orphan*/ ) ; 
 int FUNC12 (TYPE_4__*) ; 
 TYPE_8__ i915_modparams ; 
 int /*<<< orphan*/  FUNC13 (struct intel_gt*) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC15 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC16 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC17 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC18 () ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC21 (struct intel_gt*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC22 (struct intel_gt*) ; 
 int FUNC23 (struct intel_gt*) ; 
 int /*<<< orphan*/  FUNC24 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

void FUNC25(struct intel_gt *gt,
		    intel_engine_mask_t stalled_mask,
		    const char *reason)
{
	intel_engine_mask_t awake;
	int ret;

	FUNC3("flags=%lx\n", gt->reset.flags);

	FUNC18();
	FUNC2(!FUNC24(I915_RESET_BACKOFF, &gt->reset.flags));
	FUNC19(&gt->reset.mutex);

	/* Clear any previous failed attempts at recovery. Time to try again. */
	if (!FUNC6(gt))
		goto unlock;

	if (reason)
		FUNC10(gt->i915->drm.dev,
			   "Resetting chip for %s\n", reason);
	FUNC8(&gt->i915->gpu_error.reset_count);

	awake = FUNC22(gt);

	if (!FUNC14(gt->i915)) {
		if (i915_modparams.reset)
			FUNC9(gt->i915->drm.dev, "GPU reset not supported\n");
		else
			FUNC0("GPU reset disabled\n");
		goto error;
	}

	if (FUNC4(gt->i915)->gpu_reset_clobbers_display)
		FUNC16(gt->i915);

	if (FUNC11(gt, stalled_mask)) {
		FUNC9(gt->i915->drm.dev, "Failed to reset chip\n");
		goto taint;
	}

	if (FUNC4(gt->i915)->gpu_reset_clobbers_display)
		FUNC17(gt->i915);

	FUNC15(gt->i915);

	/*
	 * Next we need to restore the context, but we don't use those
	 * yet either...
	 *
	 * Ring buffer needs to be re-initialized in the KMS case, or if X
	 * was running at the time of the reset (i.e. we weren't VT
	 * switched away).
	 */
	ret = FUNC12(gt->i915);
	if (ret) {
		FUNC1("Failed to initialise HW following reset (%d)\n",
			  ret);
		goto taint;
	}

	ret = FUNC23(gt);
	if (ret)
		goto taint;

	FUNC13(gt);

finish:
	FUNC21(gt, awake);
unlock:
	FUNC20(&gt->reset.mutex);
	return;

taint:
	/*
	 * History tells us that if we cannot reset the GPU now, we
	 * never will. This then impacts everything that is run
	 * subsequently. On failing the reset, we mark the driver
	 * as wedged, preventing further execution on the GPU.
	 * We also want to go one step further and add a taint to the
	 * kernel so that any subsequent faults can be traced back to
	 * this failure. This is important for CI, where if the
	 * GPU/driver fails we would like to reboot and restart testing
	 * rather than continue on into oblivion. For everyone else,
	 * the system should still plod along, but they have been warned!
	 */
	FUNC7(TAINT_WARN);
error:
	FUNC5(gt);
	goto finish;
}