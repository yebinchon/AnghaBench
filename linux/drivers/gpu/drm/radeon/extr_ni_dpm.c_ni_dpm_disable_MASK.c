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
struct rv7xx_power_info {scalar_t__ mg_clock_gating; scalar_t__ gfx_clock_gating; scalar_t__ dynamic_pcie_gen2; scalar_t__ thermal_protection; } ;
struct radeon_ps {int dummy; } ;
struct TYPE_6__ {int dpm_thermal; scalar_t__ installed; } ;
struct TYPE_4__ {struct radeon_ps* boot_ps; } ;
struct TYPE_5__ {int /*<<< orphan*/  int_thermal_type; TYPE_1__ dpm; } ;
struct radeon_device {TYPE_3__ irq; TYPE_2__ pm; } ;
struct evergreen_power_info {scalar_t__ ls_clock_gating; } ;

/* Variables and functions */
 int /*<<< orphan*/  RADEON_DPM_AUTO_THROTTLE_SRC_THERMAL ; 
 int /*<<< orphan*/  FUNC0 (struct radeon_device*) ; 
 int /*<<< orphan*/  FUNC1 (struct radeon_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct radeon_device*,int) ; 
 struct evergreen_power_info* FUNC3 (struct radeon_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct radeon_device*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct radeon_device*,struct radeon_ps*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct radeon_device*,struct radeon_ps*,int) ; 
 int /*<<< orphan*/  FUNC7 (struct radeon_device*) ; 
 int /*<<< orphan*/  FUNC8 (struct radeon_device*,int) ; 
 int /*<<< orphan*/  FUNC9 (struct radeon_device*,int) ; 
 int /*<<< orphan*/  FUNC10 (struct radeon_device*,int) ; 
 int /*<<< orphan*/  FUNC11 (struct radeon_device*) ; 
 int /*<<< orphan*/  FUNC12 (struct radeon_device*) ; 
 int /*<<< orphan*/  FUNC13 (struct radeon_device*,struct radeon_ps*) ; 
 scalar_t__ FUNC14 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (struct radeon_device*) ; 
 int /*<<< orphan*/  FUNC16 (struct radeon_device*) ; 
 int /*<<< orphan*/  FUNC17 (struct radeon_device*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC18 (struct radeon_device*,int) ; 
 struct rv7xx_power_info* FUNC19 (struct radeon_device*) ; 

void FUNC20(struct radeon_device *rdev)
{
	struct rv7xx_power_info *pi = FUNC19(rdev);
	struct evergreen_power_info *eg_pi = FUNC3(rdev);
	struct radeon_ps *boot_ps = rdev->pm.dpm.boot_ps;

	if (!FUNC0(rdev))
		return;
	FUNC16(rdev);
	if (pi->thermal_protection)
		FUNC18(rdev, false);
	FUNC5(rdev, boot_ps, false);
	FUNC6(rdev, boot_ps, false);
	FUNC2(rdev, false);
	FUNC17(rdev, RADEON_DPM_AUTO_THROTTLE_SRC_THERMAL, false);
	if (pi->dynamic_pcie_gen2)
		FUNC4(rdev, false);

	if (rdev->irq.installed &&
	    FUNC14(rdev->pm.int_thermal_type)) {
		rdev->irq.dpm_thermal = false;
		FUNC15(rdev);
	}

	if (pi->gfx_clock_gating)
		FUNC8(rdev, false);
	if (pi->mg_clock_gating)
		FUNC10(rdev, false);
	if (eg_pi->ls_clock_gating)
		FUNC9(rdev, false);
	FUNC11(rdev);
	FUNC1(rdev);
	FUNC12(rdev);
	FUNC7(rdev);

	FUNC13(rdev, boot_ps);
}