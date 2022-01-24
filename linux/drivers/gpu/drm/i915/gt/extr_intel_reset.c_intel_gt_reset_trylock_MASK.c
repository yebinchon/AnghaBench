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
struct TYPE_2__ {int /*<<< orphan*/  backoff_srcu; int /*<<< orphan*/  flags; int /*<<< orphan*/  queue; } ;
struct intel_gt {TYPE_1__ reset; } ;

/* Variables and functions */
 int EINTR ; 
 int /*<<< orphan*/  I915_RESET_BACKOFF ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,int) ; 

int FUNC7(struct intel_gt *gt, int *srcu)
{
	FUNC0(&gt->reset.backoff_srcu);
	FUNC1();

	FUNC2();
	while (FUNC5(I915_RESET_BACKOFF, &gt->reset.flags)) {
		FUNC3();

		if (FUNC6(gt->reset.queue,
					     !FUNC5(I915_RESET_BACKOFF,
						       &gt->reset.flags)))
			return -EINTR;

		FUNC2();
	}
	*srcu = FUNC4(&gt->reset.backoff_srcu);
	FUNC3();

	return 0;
}