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
typedef  int /*<<< orphan*/  uint32_t ;
struct TYPE_2__ {int /*<<< orphan*/ * handles; struct drm_file** filp; } ;
struct radeon_device {TYPE_1__ vce; } ;
struct drm_file {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 int RADEON_MAX_VCE_HANDLES ; 
 int /*<<< orphan*/  TN_RING_TYPE_VCE1_INDEX ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct radeon_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct radeon_device*) ; 

void FUNC5(struct radeon_device *rdev, struct drm_file *filp)
{
	int i, r;
	for (i = 0; i < RADEON_MAX_VCE_HANDLES; ++i) {
		uint32_t handle = FUNC1(&rdev->vce.handles[i]);
		if (!handle || rdev->vce.filp[i] != filp)
			continue;

		FUNC4(rdev);

		r = FUNC3(rdev, TN_RING_TYPE_VCE1_INDEX,
					       handle, NULL);
		if (r)
			FUNC0("Error destroying VCE handle (%d)!\n", r);

		rdev->vce.filp[i] = NULL;
		FUNC2(&rdev->vce.handles[i], 0);
	}
}