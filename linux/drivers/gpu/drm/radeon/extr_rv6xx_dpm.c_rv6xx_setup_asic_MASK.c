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
struct TYPE_3__ {int platform_caps; } ;
struct TYPE_4__ {TYPE_1__ dpm; } ;
struct radeon_device {TYPE_2__ pm; } ;

/* Variables and functions */
 int ATOM_PP_PLATFORM_CAP_ASPM_L0s ; 
 int ATOM_PP_PLATFORM_CAP_ASPM_L1 ; 
 int ATOM_PP_PLATFORM_CAP_TURNOFFPLL_ASPML1 ; 
 int /*<<< orphan*/  FUNC0 (struct radeon_device*) ; 
 scalar_t__ radeon_aspm ; 
 int /*<<< orphan*/  FUNC1 (struct radeon_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct radeon_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct radeon_device*) ; 

void FUNC4(struct radeon_device *rdev)
{
	FUNC0(rdev);

	if (radeon_aspm != 0) {
		if (rdev->pm.dpm.platform_caps & ATOM_PP_PLATFORM_CAP_ASPM_L0s)
			FUNC1(rdev);
		if (rdev->pm.dpm.platform_caps & ATOM_PP_PLATFORM_CAP_ASPM_L1)
			FUNC2(rdev);
		if (rdev->pm.dpm.platform_caps & ATOM_PP_PLATFORM_CAP_TURNOFFPLL_ASPML1)
			FUNC3(rdev);
	}
}