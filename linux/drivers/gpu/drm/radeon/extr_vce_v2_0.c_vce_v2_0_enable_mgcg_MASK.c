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
struct radeon_device {int cg_flags; } ;

/* Variables and functions */
 int RADEON_CG_SUPPORT_VCE_MGCG ; 
 int /*<<< orphan*/  FUNC0 (struct radeon_device*) ; 
 int /*<<< orphan*/  FUNC1 (struct radeon_device*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct radeon_device*,int) ; 

void FUNC3(struct radeon_device *rdev, bool enable)
{
	bool sw_cg = false;

	if (enable && (rdev->cg_flags & RADEON_CG_SUPPORT_VCE_MGCG)) {
		if (sw_cg)
			FUNC2(rdev, true);
		else
			FUNC1(rdev, true);
	} else {
		FUNC0(rdev);

		if (sw_cg)
			FUNC2(rdev, false);
		else
			FUNC1(rdev, false);
	}
}