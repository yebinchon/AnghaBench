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
struct rv7xx_power_info {scalar_t__ dcodt; } ;
struct TYPE_4__ {int platform_caps; } ;
struct TYPE_3__ {TYPE_2__ dpm; } ;
struct radeon_device {TYPE_1__ pm; } ;

/* Variables and functions */
 int ATOM_PP_PLATFORM_CAP_ASPM_L0s ; 
 int ATOM_PP_PLATFORM_CAP_ASPM_L1 ; 
 int ATOM_PP_PLATFORM_CAP_TURNOFFPLL_ASPML1 ; 
 int /*<<< orphan*/  FUNC0 (struct radeon_device*) ; 
 scalar_t__ radeon_aspm ; 
 int /*<<< orphan*/  FUNC1 (struct radeon_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct radeon_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct radeon_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct radeon_device*) ; 
 int /*<<< orphan*/  FUNC5 (struct radeon_device*) ; 
 int /*<<< orphan*/  FUNC6 (struct radeon_device*) ; 
 int /*<<< orphan*/  FUNC7 (struct radeon_device*) ; 
 struct rv7xx_power_info* FUNC8 (struct radeon_device*) ; 
 int /*<<< orphan*/  FUNC9 (struct radeon_device*) ; 

void FUNC10(struct radeon_device *rdev)
{
	struct rv7xx_power_info *pi = FUNC8(rdev);

	FUNC0(rdev);
	FUNC9(rdev);
	FUNC6(rdev);
	if (pi->dcodt)
		FUNC5(rdev);
	FUNC7(rdev);

	FUNC1(rdev);

	if (radeon_aspm != 0) {
		if (rdev->pm.dpm.platform_caps & ATOM_PP_PLATFORM_CAP_ASPM_L0s)
			FUNC2(rdev);
		if (rdev->pm.dpm.platform_caps & ATOM_PP_PLATFORM_CAP_ASPM_L1)
			FUNC3(rdev);
		if (rdev->pm.dpm.platform_caps & ATOM_PP_PLATFORM_CAP_TURNOFFPLL_ASPML1)
			FUNC4(rdev);
	}
}