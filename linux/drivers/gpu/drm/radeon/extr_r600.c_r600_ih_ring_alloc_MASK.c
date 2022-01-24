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
struct TYPE_2__ {int /*<<< orphan*/ * ring_obj; int /*<<< orphan*/  ring; int /*<<< orphan*/  gpu_addr; int /*<<< orphan*/  ring_size; } ;
struct radeon_device {TYPE_1__ ih; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 int /*<<< orphan*/  PAGE_SIZE ; 
 int /*<<< orphan*/  RADEON_GEM_DOMAIN_GTT ; 
 int FUNC1 (struct radeon_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 int FUNC2 (int /*<<< orphan*/ *,void**) ; 
 int FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int) ; 

int FUNC7(struct radeon_device *rdev)
{
	int r;

	/* Allocate ring buffer */
	if (rdev->ih.ring_obj == NULL) {
		r = FUNC1(rdev, rdev->ih.ring_size,
				     PAGE_SIZE, true,
				     RADEON_GEM_DOMAIN_GTT, 0,
				     NULL, NULL, &rdev->ih.ring_obj);
		if (r) {
			FUNC0("radeon: failed to create ih ring buffer (%d).\n", r);
			return r;
		}
		r = FUNC4(rdev->ih.ring_obj, false);
		if (FUNC6(r != 0))
			return r;
		r = FUNC3(rdev->ih.ring_obj,
				  RADEON_GEM_DOMAIN_GTT,
				  &rdev->ih.gpu_addr);
		if (r) {
			FUNC5(rdev->ih.ring_obj);
			FUNC0("radeon: failed to pin ih ring buffer (%d).\n", r);
			return r;
		}
		r = FUNC2(rdev->ih.ring_obj,
				   (void **)&rdev->ih.ring);
		FUNC5(rdev->ih.ring_obj);
		if (r) {
			FUNC0("radeon: failed to map ih ring buffer (%d).\n", r);
			return r;
		}
	}
	return 0;
}