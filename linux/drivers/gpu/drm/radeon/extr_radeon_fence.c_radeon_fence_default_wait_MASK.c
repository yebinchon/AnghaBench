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
struct radeon_wait_cb {int /*<<< orphan*/  base; int /*<<< orphan*/  task; } ;
struct radeon_fence {struct radeon_device* rdev; } ;
struct radeon_device {scalar_t__ needs_reset; } ;
struct dma_fence {int dummy; } ;

/* Variables and functions */
 long EDEADLK ; 
 long ERESTARTSYS ; 
 int /*<<< orphan*/  TASK_INTERRUPTIBLE ; 
 int /*<<< orphan*/  TASK_RUNNING ; 
 int /*<<< orphan*/  TASK_UNINTERRUPTIBLE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  current ; 
 scalar_t__ FUNC1 (struct dma_fence*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct dma_fence*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  radeon_fence_wait_cb ; 
 scalar_t__ FUNC3 (struct radeon_fence*) ; 
 long FUNC4 (long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 
 struct radeon_fence* FUNC7 (struct dma_fence*) ; 

__attribute__((used)) static signed long FUNC8(struct dma_fence *f, bool intr,
					     signed long t)
{
	struct radeon_fence *fence = FUNC7(f);
	struct radeon_device *rdev = fence->rdev;
	struct radeon_wait_cb cb;

	cb.task = current;

	if (FUNC1(f, &cb.base, radeon_fence_wait_cb))
		return t;

	while (t > 0) {
		if (intr)
			FUNC5(TASK_INTERRUPTIBLE);
		else
			FUNC5(TASK_UNINTERRUPTIBLE);

		/*
		 * radeon_test_signaled must be called after
		 * set_current_state to prevent a race with wake_up_process
		 */
		if (FUNC3(fence))
			break;

		if (rdev->needs_reset) {
			t = -EDEADLK;
			break;
		}

		t = FUNC4(t);

		if (t > 0 && intr && FUNC6(current))
			t = -ERESTARTSYS;
	}

	FUNC0(TASK_RUNNING);
	FUNC2(f, &cb.base);

	return t;
}