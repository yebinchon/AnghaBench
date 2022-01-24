#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct i915_gpu_state {int /*<<< orphan*/  ref; int /*<<< orphan*/  simulated; } ;
struct TYPE_7__ {TYPE_2__* primary; int /*<<< orphan*/  dev; } ;
struct TYPE_5__ {int /*<<< orphan*/  lock; struct i915_gpu_state* first_error; } ;
struct drm_i915_private {TYPE_3__ drm; TYPE_1__ gpu_error; } ;
typedef  int /*<<< orphan*/  intel_engine_mask_t ;
struct TYPE_8__ {int /*<<< orphan*/  error_capture; } ;
struct TYPE_6__ {int /*<<< orphan*/  index; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int) ; 
 scalar_t__ DRIVER_TIMESTAMP ; 
 scalar_t__ FUNC1 (struct i915_gpu_state*) ; 
 scalar_t__ FUNC2 (struct i915_gpu_state*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct i915_gpu_state*,int /*<<< orphan*/ ,char const*) ; 
 struct i915_gpu_state* FUNC6 (struct drm_i915_private*) ; 
 TYPE_4__ i915_modparams ; 
 scalar_t__ FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (char*,...) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC11 (int*,int) ; 

void FUNC12(struct drm_i915_private *i915,
			      intel_engine_mask_t engine_mask,
			      const char *msg)
{
	static bool warned;
	struct i915_gpu_state *error;
	unsigned long flags;

	if (!i915_modparams.error_capture)
		return;

	if (FUNC2(i915->gpu_error.first_error))
		return;

	error = FUNC6(i915);
	if (FUNC1(error))
		return;

	FUNC4(i915->drm.dev, "%s\n", FUNC5(error, engine_mask, msg));

	if (!error->simulated) {
		FUNC9(&i915->gpu_error.lock, flags);
		if (!i915->gpu_error.first_error) {
			i915->gpu_error.first_error = error;
			error = NULL;
		}
		FUNC10(&i915->gpu_error.lock, flags);
	}

	if (error) {
		FUNC3(&error->ref);
		return;
	}

	if (!FUNC11(&warned, true) &&
	    FUNC7() - DRIVER_TIMESTAMP < FUNC0(180)) {
		FUNC8("GPU hangs can indicate a bug anywhere in the entire gfx stack, including userspace.\n");
		FUNC8("Please file a _new_ bug report on bugs.freedesktop.org against DRI -> DRM/Intel\n");
		FUNC8("drm/i915 developers can then reassign to the right component if it's not a kernel issue.\n");
		FUNC8("The GPU crash dump is required to analyze GPU hangs, so please always attach it.\n");
		FUNC8("GPU crash dump saved to /sys/class/drm/card%d/error\n",
			i915->drm.primary->index);
	}
}