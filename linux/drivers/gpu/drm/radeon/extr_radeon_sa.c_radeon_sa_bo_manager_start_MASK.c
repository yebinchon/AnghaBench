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
struct radeon_sa_manager {int /*<<< orphan*/ * bo; int /*<<< orphan*/  cpu_ptr; int /*<<< orphan*/  gpu_addr; int /*<<< orphan*/  domain; } ;
struct radeon_device {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,...) ; 
 int FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

int FUNC5(struct radeon_device *rdev,
			       struct radeon_sa_manager *sa_manager)
{
	int r;

	if (sa_manager->bo == NULL) {
		FUNC0(rdev->dev, "no bo for sa manager\n");
		return -EINVAL;
	}

	/* map the buffer */
	r = FUNC3(sa_manager->bo, false);
	if (r) {
		FUNC0(rdev->dev, "(%d) failed to reserve manager bo\n", r);
		return r;
	}
	r = FUNC2(sa_manager->bo, sa_manager->domain, &sa_manager->gpu_addr);
	if (r) {
		FUNC4(sa_manager->bo);
		FUNC0(rdev->dev, "(%d) failed to pin manager bo\n", r);
		return r;
	}
	r = FUNC1(sa_manager->bo, &sa_manager->cpu_ptr);
	FUNC4(sa_manager->bo);
	return r;
}