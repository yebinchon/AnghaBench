#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct intel_gt {TYPE_2__* i915; } ;
struct TYPE_7__ {scalar_t__ reset; } ;
struct TYPE_5__ {int /*<<< orphan*/  dev; } ;
struct TYPE_6__ {TYPE_1__ drm; } ;

/* Variables and functions */
 int /*<<< orphan*/  ETIME ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  I915_GEM_IDLE_TIMEOUT ; 
 int I915_WAIT_FOR_IDLE_BOOST ; 
 int I915_WAIT_LOCKED ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,int,int /*<<< orphan*/ ) ; 
 TYPE_3__ i915_modparams ; 
 scalar_t__ FUNC3 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (struct intel_gt*) ; 
 scalar_t__ FUNC5 (struct intel_gt*) ; 
 int /*<<< orphan*/  FUNC6 (struct intel_gt*) ; 

__attribute__((used)) static bool FUNC7(struct intel_gt *gt)
{
	bool result = !FUNC4(gt);

	do {
		if (FUNC2(gt->i915,
					   I915_WAIT_LOCKED |
					   I915_WAIT_FOR_IDLE_BOOST,
					   I915_GEM_IDLE_TIMEOUT) == -ETIME) {
			/* XXX hide warning from gem_eio */
			if (i915_modparams.reset) {
				FUNC1(gt->i915->drm.dev,
					"Failed to idle engines, declaring wedged!\n");
				FUNC0();
			}

			/*
			 * Forcibly cancel outstanding work and leave
			 * the gpu quiet.
			 */
			FUNC6(gt);
			result = false;
		}
	} while (FUNC3(gt->i915) && result);

	if (FUNC5(gt))
		result = false;

	return result;
}