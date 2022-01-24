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
struct intel_device_info {unsigned int engine_mask; } ;
struct drm_i915_private {int /*<<< orphan*/  gt; } ;
struct TYPE_4__ {unsigned int engine_mask; } ;
struct TYPE_3__ {int /*<<< orphan*/  num_engines; } ;

/* Variables and functions */
 unsigned int FUNC0 (int /*<<< orphan*/ ) ; 
 unsigned int FUNC1 (unsigned int) ; 
 scalar_t__ FUNC2 (unsigned int) ; 
 int ENODEV ; 
 unsigned int const FUNC3 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct drm_i915_private*,unsigned int) ; 
 int /*<<< orphan*/  I915_NUM_ENGINES ; 
 TYPE_2__* FUNC5 (struct drm_i915_private*) ; 
 TYPE_1__* FUNC6 (struct drm_i915_private*) ; 
 scalar_t__ FUNC7 (unsigned int const) ; 
 int /*<<< orphan*/  FUNC8 (unsigned int) ; 
 scalar_t__ FUNC9 (struct drm_i915_private*) ; 
 int FUNC10 (int /*<<< orphan*/ *,unsigned int) ; 
 int /*<<< orphan*/  intel_engines ; 
 int /*<<< orphan*/  FUNC11 (struct drm_i915_private*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (struct drm_i915_private*) ; 
 struct intel_device_info* FUNC14 (struct drm_i915_private*) ; 

int FUNC15(struct drm_i915_private *i915)
{
	struct intel_device_info *device_info = FUNC14(i915);
	const unsigned int engine_mask = FUNC5(i915)->engine_mask;
	unsigned int mask = 0;
	unsigned int i;
	int err;

	FUNC7(engine_mask == 0);
	FUNC7(engine_mask &
		FUNC3(FUNC2(mask) - 1, I915_NUM_ENGINES));

	if (FUNC9(i915))
		return -ENODEV;

	for (i = 0; i < FUNC0(intel_engines); i++) {
		if (!FUNC4(i915, i))
			continue;

		err = FUNC10(&i915->gt, i);
		if (err)
			goto cleanup;

		mask |= FUNC1(i);
	}

	/*
	 * Catch failures to update intel_engines table when the new engines
	 * are added to the driver by a warning and disabling the forgotten
	 * engines.
	 */
	if (FUNC7(mask != engine_mask))
		device_info->engine_mask = mask;

	FUNC6(i915)->num_engines = FUNC8(mask);

	FUNC12(&i915->gt);

	FUNC13(i915);

	return 0;

cleanup:
	FUNC11(i915);
	return err;
}