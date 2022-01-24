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
struct rv6xx_power_info {int display_gap; scalar_t__ gfx_clock_gating; scalar_t__ dynamic_pcie_gen2; scalar_t__ voltage_control; scalar_t__ dynamic_ss; } ;
struct radeon_ps {int dummy; } ;
struct TYPE_3__ {int platform_caps; struct radeon_ps* boot_ps; } ;
struct TYPE_4__ {TYPE_1__ dpm; } ;
struct radeon_device {TYPE_2__ pm; } ;

/* Variables and functions */
 int ATOM_PP_PLATFORM_CAP_BACKBIAS ; 
 int EINVAL ; 
 int /*<<< orphan*/  R600_POWER_LEVEL_HIGH ; 
 int /*<<< orphan*/  R600_POWER_LEVEL_LOW ; 
 int /*<<< orphan*/  R600_POWER_LEVEL_MEDIUM ; 
 int /*<<< orphan*/  RADEON_DPM_AUTO_THROTTLE_SRC_THERMAL ; 
 scalar_t__ FUNC0 (struct radeon_device*) ; 
 int /*<<< orphan*/  FUNC1 (struct radeon_device*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct radeon_device*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (struct radeon_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct radeon_device*,struct radeon_ps*) ; 
 int /*<<< orphan*/  FUNC5 (struct radeon_device*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (struct radeon_device*,int) ; 
 int /*<<< orphan*/  FUNC7 (struct radeon_device*,int) ; 
 int /*<<< orphan*/  FUNC8 (struct radeon_device*,struct radeon_ps*,int) ; 
 int /*<<< orphan*/  FUNC9 (struct radeon_device*,int) ; 
 int /*<<< orphan*/  FUNC10 (struct radeon_device*,struct radeon_ps*,int) ; 
 int /*<<< orphan*/  FUNC11 (struct radeon_device*,struct radeon_ps*) ; 
 struct rv6xx_power_info* FUNC12 (struct radeon_device*) ; 
 int /*<<< orphan*/  FUNC13 (struct radeon_device*) ; 
 int /*<<< orphan*/  FUNC14 (struct radeon_device*) ; 
 int /*<<< orphan*/  FUNC15 (struct radeon_device*) ; 
 int /*<<< orphan*/  FUNC16 (struct radeon_device*) ; 
 int /*<<< orphan*/  FUNC17 (struct radeon_device*) ; 
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
 int /*<<< orphan*/  FUNC29 (struct radeon_device*) ; 
 int /*<<< orphan*/  FUNC30 (struct radeon_device*) ; 
 int /*<<< orphan*/  FUNC31 (struct radeon_device*) ; 

int FUNC32(struct radeon_device *rdev)
{
	struct rv6xx_power_info *pi = FUNC12(rdev);
	struct radeon_ps *boot_ps = rdev->pm.dpm.boot_ps;

	if (FUNC0(rdev))
		return -EINVAL;

	if (rdev->pm.dpm.platform_caps & ATOM_PP_PLATFORM_CAP_BACKBIAS)
		FUNC6(rdev, true);

	if (pi->dynamic_ss)
		FUNC9(rdev, true);

	FUNC18(rdev);
	FUNC14(rdev);
	FUNC17(rdev);
	FUNC26(rdev);
	FUNC27(rdev);
	FUNC23(rdev);
	FUNC16(rdev);
	FUNC29(rdev);
	FUNC31(rdev);
	FUNC15(rdev);

	FUNC7(rdev, true);
	if (pi->display_gap == false)
		FUNC7(rdev, false);

	FUNC19(rdev);

	FUNC4(rdev, boot_ps);

	if (pi->voltage_control)
		FUNC30(rdev);

	FUNC11(rdev, boot_ps);

	FUNC24(rdev);
	FUNC25(rdev);

	FUNC21(rdev);
	FUNC22(rdev);
	FUNC20(rdev);
	FUNC28(rdev);
	FUNC13(rdev);

	FUNC2(rdev, R600_POWER_LEVEL_LOW, true);
	FUNC2(rdev, R600_POWER_LEVEL_MEDIUM, true);
	FUNC2(rdev, R600_POWER_LEVEL_HIGH, true);

	FUNC5(rdev, RADEON_DPM_AUTO_THROTTLE_SRC_THERMAL, true);

	FUNC3(rdev);

	if (pi->voltage_control)
		FUNC10(rdev, boot_ps, false);

	if (pi->dynamic_pcie_gen2)
		FUNC8(rdev, boot_ps, true);

	if (pi->gfx_clock_gating)
		FUNC1(rdev, true);

	return 0;
}