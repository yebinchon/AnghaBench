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
struct TYPE_2__ {int /*<<< orphan*/  runtime_pm; } ;

/* Variables and functions */
 int /*<<< orphan*/  ALL_ENGINES ; 
 int EIO ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct intel_gt*) ; 
 int /*<<< orphan*/  FUNC2 (struct intel_gt*) ; 
 scalar_t__ FUNC3 (struct intel_gt*) ; 
 int /*<<< orphan*/  FUNC4 (struct intel_gt*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct intel_gt*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC8(void *arg)
{
	struct intel_gt *gt = arg;
	intel_wakeref_t wakeref;

	/* Check that we can recover a wedged device with a GPU reset */

	FUNC1(gt);
	wakeref = FUNC6(&gt->i915->runtime_pm);

	FUNC5(gt);

	FUNC0(!FUNC3(gt));
	FUNC4(gt, ALL_ENGINES, NULL);

	FUNC7(&gt->i915->runtime_pm, wakeref);
	FUNC2(gt);

	return FUNC3(gt) ? -EIO : 0;
}