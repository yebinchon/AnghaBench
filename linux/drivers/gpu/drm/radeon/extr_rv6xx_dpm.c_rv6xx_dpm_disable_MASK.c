#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct rv6xx_power_info {scalar_t__ gfx_clock_gating; scalar_t__ dynamic_pcie_gen2; scalar_t__ voltage_control; scalar_t__ thermal_protection; } ;
struct radeon_ps {int dummy; } ;
struct TYPE_6__ {int dpm_thermal; scalar_t__ installed; } ;
struct TYPE_4__ {int platform_caps; struct radeon_ps* boot_ps; } ;
struct TYPE_5__ {int /*<<< orphan*/  int_thermal_type; TYPE_1__ dpm; } ;
struct radeon_device {TYPE_3__ irq; TYPE_2__ pm; } ;

/* Variables and functions */
 int ATOM_PP_PLATFORM_CAP_BACKBIAS ; 
 int /*<<< orphan*/  R600_POWER_LEVEL_HIGH ; 
 int /*<<< orphan*/  R600_POWER_LEVEL_LOW ; 
 int /*<<< orphan*/  R600_POWER_LEVEL_MEDIUM ; 
 int /*<<< orphan*/  FUNC0 (struct radeon_device*) ; 
 int /*<<< orphan*/  FUNC1 (struct radeon_device*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct radeon_device*,int) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct radeon_device*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (struct radeon_device*,int,int,int,int) ; 
 int /*<<< orphan*/  FUNC6 (struct radeon_device*) ; 
 int /*<<< orphan*/  FUNC7 (struct radeon_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct radeon_device*) ; 
 int /*<<< orphan*/  FUNC9 (struct radeon_device*) ; 
 int /*<<< orphan*/  FUNC10 (struct radeon_device*,int) ; 
 int /*<<< orphan*/  FUNC11 (struct radeon_device*,int) ; 
 int /*<<< orphan*/  FUNC12 (struct radeon_device*,struct radeon_ps*,int) ; 
 int /*<<< orphan*/  FUNC13 (struct radeon_device*,int) ; 
 int /*<<< orphan*/  FUNC14 (struct radeon_device*,struct radeon_ps*,int) ; 
 struct rv6xx_power_info* FUNC15 (struct radeon_device*) ; 

void FUNC16(struct radeon_device *rdev)
{
	struct rv6xx_power_info *pi = FUNC15(rdev);
	struct radeon_ps *boot_ps = rdev->pm.dpm.boot_ps;

	if (!FUNC0(rdev))
		return;

	FUNC4(rdev, R600_POWER_LEVEL_LOW, true);
	FUNC4(rdev, R600_POWER_LEVEL_MEDIUM, true);
	FUNC11(rdev, false);
	FUNC9(rdev);
	FUNC5(rdev, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF);

	if (pi->thermal_protection)
		FUNC1(rdev, false);

	FUNC7(rdev, R600_POWER_LEVEL_LOW);
	FUNC4(rdev, R600_POWER_LEVEL_HIGH, false);
	FUNC4(rdev, R600_POWER_LEVEL_MEDIUM, false);

	if (rdev->pm.dpm.platform_caps & ATOM_PP_PLATFORM_CAP_BACKBIAS)
		FUNC10(rdev, false);

	FUNC13(rdev, false);

	if (pi->voltage_control)
		FUNC14(rdev, boot_ps, true);

	if (pi->dynamic_pcie_gen2)
		FUNC12(rdev, boot_ps, false);

	if (rdev->irq.installed &&
	    FUNC3(rdev->pm.int_thermal_type)) {
		rdev->irq.dpm_thermal = false;
		FUNC8(rdev);
	}

	if (pi->gfx_clock_gating)
		FUNC2(rdev, false);

	FUNC6(rdev);
}