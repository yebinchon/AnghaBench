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
struct rv6xx_power_info {scalar_t__ thermal_protection; scalar_t__ dynamic_pcie_gen2; scalar_t__ voltage_control; scalar_t__ restricted_levels; } ;
struct radeon_ps {int dummy; } ;
struct TYPE_3__ {int platform_caps; int voltage_response_time; struct radeon_ps* current_ps; struct radeon_ps* requested_ps; } ;
struct TYPE_4__ {TYPE_1__ dpm; } ;
struct radeon_device {TYPE_2__ pm; } ;

/* Variables and functions */
 int ATOM_PP_PLATFORM_CAP_BACKBIAS ; 
 int ATOM_PP_PLATFORM_CAP_STEPVDDC ; 
 int /*<<< orphan*/  R600_POWER_LEVEL_HIGH ; 
 int /*<<< orphan*/  R600_POWER_LEVEL_LOW ; 
 int /*<<< orphan*/  R600_POWER_LEVEL_MEDIUM ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct radeon_device*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct radeon_device*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (struct radeon_device*,int,int,int,int) ; 
 int /*<<< orphan*/  FUNC4 (struct radeon_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct radeon_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct radeon_device*,struct radeon_ps*) ; 
 int /*<<< orphan*/  FUNC7 (struct radeon_device*) ; 
 int /*<<< orphan*/  FUNC8 (struct radeon_device*,int) ; 
 int /*<<< orphan*/  FUNC9 (struct radeon_device*,struct radeon_ps*,int) ; 
 int /*<<< orphan*/  FUNC10 (struct radeon_device*,int) ; 
 int /*<<< orphan*/  FUNC11 (struct radeon_device*) ; 
 int /*<<< orphan*/  FUNC12 (struct radeon_device*) ; 
 int /*<<< orphan*/  FUNC13 (struct radeon_device*,int) ; 
 int /*<<< orphan*/  FUNC14 (struct radeon_device*,struct radeon_ps*) ; 
 int /*<<< orphan*/  FUNC15 (struct radeon_device*,struct radeon_ps*) ; 
 int /*<<< orphan*/  FUNC16 (struct radeon_device*,struct radeon_ps*,struct radeon_ps*) ; 
 struct rv6xx_power_info* FUNC17 (struct radeon_device*) ; 
 int /*<<< orphan*/  FUNC18 (struct radeon_device*) ; 
 int /*<<< orphan*/  FUNC19 (struct radeon_device*) ; 
 int /*<<< orphan*/  FUNC20 (struct radeon_device*) ; 
 int /*<<< orphan*/  FUNC21 (struct radeon_device*) ; 
 int /*<<< orphan*/  FUNC22 (struct radeon_device*) ; 
 int /*<<< orphan*/  FUNC23 (struct radeon_device*) ; 
 int /*<<< orphan*/  FUNC24 (struct radeon_device*) ; 
 int /*<<< orphan*/  FUNC25 (struct radeon_device*) ; 
 int /*<<< orphan*/  FUNC26 (struct radeon_device*) ; 
 int /*<<< orphan*/  FUNC27 (struct radeon_device*) ; 
 int /*<<< orphan*/  FUNC28 (struct radeon_device*) ; 
 int /*<<< orphan*/  FUNC29 (struct radeon_device*,struct radeon_ps*,struct radeon_ps*) ; 
 int /*<<< orphan*/  FUNC30 (struct radeon_device*,struct radeon_ps*,struct radeon_ps*) ; 
 int /*<<< orphan*/  FUNC31 (struct radeon_device*,struct radeon_ps*) ; 
 int /*<<< orphan*/  FUNC32 (struct radeon_device*,struct radeon_ps*,struct radeon_ps*) ; 
 int /*<<< orphan*/  FUNC33 (struct radeon_device*,struct radeon_ps*,struct radeon_ps*) ; 
 int /*<<< orphan*/  FUNC34 (struct radeon_device*,struct radeon_ps*,struct radeon_ps*) ; 
 int FUNC35 (struct radeon_device*,struct radeon_ps*,struct radeon_ps*) ; 
 int /*<<< orphan*/  FUNC36 (struct radeon_device*,struct radeon_ps*,struct radeon_ps*) ; 

int FUNC37(struct radeon_device *rdev)
{
	struct rv6xx_power_info *pi = FUNC17(rdev);
	struct radeon_ps *new_ps = rdev->pm.dpm.requested_ps;
	struct radeon_ps *old_ps = rdev->pm.dpm.current_ps;
	int ret;

	pi->restricted_levels = 0;

	FUNC34(rdev, new_ps, old_ps);

	FUNC7(rdev);
	FUNC2(rdev, R600_POWER_LEVEL_LOW, true);
	FUNC3(rdev, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF);

	if (pi->thermal_protection)
		FUNC1(rdev, false);

	FUNC4(rdev, R600_POWER_LEVEL_LOW);
	FUNC2(rdev, R600_POWER_LEVEL_HIGH, false);
	FUNC2(rdev, R600_POWER_LEVEL_MEDIUM, false);

	FUNC16(rdev, new_ps, old_ps);
	FUNC24(rdev);

	if (pi->voltage_control) {
		FUNC32(rdev, new_ps, old_ps);
		if (rdev->pm.dpm.platform_caps & ATOM_PP_PLATFORM_CAP_STEPVDDC)
			FUNC31(rdev, old_ps);
	}

	if (rdev->pm.dpm.platform_caps & ATOM_PP_PLATFORM_CAP_BACKBIAS)
		FUNC29(rdev, new_ps, old_ps);

	if (pi->dynamic_pcie_gen2)
		FUNC30(rdev, new_ps, old_ps);

	if (pi->voltage_control)
		FUNC10(rdev, false);

	if (rdev->pm.dpm.platform_caps & ATOM_PP_PLATFORM_CAP_BACKBIAS)
		FUNC8(rdev, false);

	if (pi->voltage_control) {
		if (rdev->pm.dpm.platform_caps & ATOM_PP_PLATFORM_CAP_STEPVDDC)
			FUNC36(rdev, new_ps, old_ps);
		FUNC0((rdev->pm.dpm.voltage_response_time + 999) / 1000);
	}

	FUNC2(rdev, R600_POWER_LEVEL_MEDIUM, true);
	FUNC2(rdev, R600_POWER_LEVEL_LOW, false);
	FUNC5(rdev, R600_POWER_LEVEL_LOW);

	FUNC14(rdev, new_ps);
	FUNC18(rdev);
	FUNC6(rdev, new_ps);
	FUNC26(rdev);
	FUNC22(rdev);

	FUNC2(rdev, R600_POWER_LEVEL_LOW, true);
	FUNC4(rdev, R600_POWER_LEVEL_LOW);
	FUNC2(rdev, R600_POWER_LEVEL_MEDIUM, false);

	if (pi->voltage_control) {
		if (rdev->pm.dpm.platform_caps & ATOM_PP_PLATFORM_CAP_STEPVDDC) {
			ret = FUNC35(rdev, new_ps, old_ps);
			if (ret)
				return ret;
		}
		FUNC10(rdev, true);
	}

	if (rdev->pm.dpm.platform_caps & ATOM_PP_PLATFORM_CAP_BACKBIAS)
		FUNC8(rdev, true);

	if (pi->dynamic_pcie_gen2)
		FUNC9(rdev, new_ps, true);

	FUNC28(rdev);

	FUNC15(rdev, new_ps);
	FUNC25(rdev);
	FUNC21(rdev);
	FUNC23(rdev);
	FUNC20(rdev);
	FUNC12(rdev);
	FUNC11(rdev);

	if (pi->thermal_protection)
		FUNC13(rdev, true);
	FUNC27(rdev);
	FUNC19(rdev);

	FUNC33(rdev, new_ps, old_ps);

	return 0;
}