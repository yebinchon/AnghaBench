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
struct intel_uncore {TYPE_1__* debug; } ;
struct TYPE_4__ {int /*<<< orphan*/  mmio_debug; } ;
struct TYPE_3__ {scalar_t__ unclaimed_mmio_check; int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int FUNC1 (struct intel_uncore*) ; 
 TYPE_2__ i915_modparams ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int) ; 

bool
FUNC5(struct intel_uncore *uncore)
{
	bool ret = false;

	FUNC2(&uncore->debug->lock);

	if (FUNC4(uncore->debug->unclaimed_mmio_check <= 0))
		goto out;

	if (FUNC4(FUNC1(uncore))) {
		if (!i915_modparams.mmio_debug) {
			FUNC0("Unclaimed register detected, "
				  "enabling oneshot unclaimed register reporting. "
				  "Please use i915.mmio_debug=N for more information.\n");
			i915_modparams.mmio_debug++;
		}
		uncore->debug->unclaimed_mmio_check--;
		ret = true;
	}

out:
	FUNC3(&uncore->debug->lock);

	return ret;
}