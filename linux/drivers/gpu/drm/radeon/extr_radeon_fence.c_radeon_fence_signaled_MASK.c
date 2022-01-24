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
struct radeon_fence {int /*<<< orphan*/  base; int /*<<< orphan*/  ring; int /*<<< orphan*/  seq; int /*<<< orphan*/  rdev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

bool FUNC3(struct radeon_fence *fence)
{
	if (!fence)
		return true;

	if (FUNC2(fence->rdev, fence->seq, fence->ring)) {
		int ret;

		ret = FUNC1(&fence->base);
		if (!ret)
			FUNC0(&fence->base, "signaled from radeon_fence_signaled\n");
		return true;
	}
	return false;
}