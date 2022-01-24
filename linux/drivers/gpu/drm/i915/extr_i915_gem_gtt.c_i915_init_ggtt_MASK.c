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
struct drm_i915_private {int /*<<< orphan*/  ggtt; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct drm_i915_private*) ; 
 scalar_t__ INTEL_PPGTT_ALIASING ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 

int FUNC4(struct drm_i915_private *i915)
{
	int ret;

	ret = FUNC3(&i915->ggtt);
	if (ret)
		return ret;

	if (FUNC0(i915) == INTEL_PPGTT_ALIASING) {
		ret = FUNC2(&i915->ggtt);
		if (ret)
			FUNC1(&i915->ggtt);
	}

	return 0;
}