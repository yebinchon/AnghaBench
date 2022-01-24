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
struct intel_gt {TYPE_1__* i915; } ;
typedef  int /*<<< orphan*/  intel_wakeref_t ;
struct TYPE_2__ {int /*<<< orphan*/  runtime_pm; int /*<<< orphan*/  gpu_error; } ;

/* Variables and functions */
 int /*<<< orphan*/  ALL_ENGINES ; 
 int EINVAL ; 
 int EIO ; 
 unsigned int FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct intel_gt*) ; 
 int /*<<< orphan*/  FUNC2 (struct intel_gt*) ; 
 scalar_t__ FUNC3 (struct intel_gt*) ; 
 int /*<<< orphan*/  FUNC4 (struct intel_gt*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 

__attribute__((used)) static int FUNC8(void *arg)
{
	struct intel_gt *gt = arg;
	unsigned int reset_count;
	intel_wakeref_t wakeref;
	int err = 0;

	/* Check that we can issue a global GPU reset */

	FUNC1(gt);
	wakeref = FUNC5(&gt->i915->runtime_pm);

	reset_count = FUNC0(&gt->i915->gpu_error);

	FUNC4(gt, ALL_ENGINES, NULL);

	if (FUNC0(&gt->i915->gpu_error) == reset_count) {
		FUNC7("No GPU reset recorded!\n");
		err = -EINVAL;
	}

	FUNC6(&gt->i915->runtime_pm, wakeref);
	FUNC2(gt);

	if (FUNC3(gt))
		err = -EIO;

	return err;
}