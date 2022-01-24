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
struct evergreen_power_info {scalar_t__ dynamic_ac_timing; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct radeon_device*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct radeon_device*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct radeon_device*,struct radeon_ps*) ; 
 int /*<<< orphan*/  FUNC3 (struct radeon_device*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct radeon_device*,int) ; 
 struct evergreen_power_info* FUNC5 (struct radeon_device*) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct radeon_device*) ; 
 int /*<<< orphan*/  FUNC8 (struct radeon_device*) ; 
 int /*<<< orphan*/  FUNC9 (struct radeon_device*) ; 
 int /*<<< orphan*/  FUNC10 (struct radeon_device*) ; 
 int /*<<< orphan*/  FUNC11 (struct radeon_device*,int) ; 
 struct rv7xx_power_info* FUNC12 (struct radeon_device*) ; 
 int /*<<< orphan*/  FUNC13 (struct radeon_device*) ; 
 int /*<<< orphan*/  FUNC14 (struct radeon_device*) ; 

void FUNC15(struct radeon_device *rdev)
{
	struct rv7xx_power_info *pi = FUNC12(rdev);
	struct evergreen_power_info *eg_pi = FUNC5(rdev);
	struct radeon_ps *boot_ps = rdev->pm.dpm.boot_ps;

	if (!FUNC10(rdev))
		return;

	FUNC9(rdev);

	if (pi->thermal_protection)
		FUNC11(rdev, false);

	if (pi->dynamic_pcie_gen2)
		FUNC0(rdev, false);

	if (rdev->irq.installed &&
	    FUNC6(rdev->pm.int_thermal_type)) {
		rdev->irq.dpm_thermal = false;
		FUNC8(rdev);
	}

	if (pi->gfx_clock_gating)
		FUNC3(rdev, false);

	if (pi->mg_clock_gating)
		FUNC4(rdev, false);

	FUNC14(rdev);
	FUNC7(rdev);

	FUNC1(rdev, false);

	if (eg_pi->dynamic_ac_timing)
		FUNC2(rdev, boot_ps);

	FUNC13(rdev);
}