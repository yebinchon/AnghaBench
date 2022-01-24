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
struct TYPE_5__ {int /*<<< orphan*/  boot_ps; } ;
struct TYPE_6__ {TYPE_2__ dpm; int /*<<< orphan*/  int_thermal_type; } ;
struct TYPE_4__ {int dpm_thermal; scalar_t__ installed; } ;
struct radeon_device {TYPE_3__ pm; TYPE_1__ irq; } ;
struct evergreen_power_info {scalar_t__ ls_clock_gating; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct radeon_device*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct radeon_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct radeon_device*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct radeon_device*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct radeon_device*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct radeon_device*) ; 
 int /*<<< orphan*/  FUNC6 (struct radeon_device*) ; 
 int /*<<< orphan*/  FUNC7 (struct radeon_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct radeon_device*,int) ; 
 struct evergreen_power_info* FUNC9 (struct radeon_device*) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct radeon_device*) ; 
 int /*<<< orphan*/  FUNC12 (struct radeon_device*) ; 
 int /*<<< orphan*/  FUNC13 (struct radeon_device*,int) ; 
 struct rv7xx_power_info* FUNC14 (struct radeon_device*) ; 
 int /*<<< orphan*/  FUNC15 (struct radeon_device*) ; 

void FUNC16(struct radeon_device *rdev)
{
	struct rv7xx_power_info *pi = FUNC14(rdev);
	struct evergreen_power_info *eg_pi = FUNC9(rdev);

	if (!FUNC1(rdev))
		return;

	FUNC12(rdev);

	if (pi->thermal_protection)
		FUNC13(rdev, false);

	if (pi->dynamic_pcie_gen2)
		FUNC2(rdev, false);

	if (rdev->irq.installed &&
	    FUNC10(rdev->pm.int_thermal_type)) {
		rdev->irq.dpm_thermal = false;
		FUNC11(rdev);
	}

	if (pi->gfx_clock_gating)
		FUNC0(rdev, false);

	if (pi->mg_clock_gating)
		FUNC4(rdev, false);

	if (eg_pi->ls_clock_gating)
		FUNC3(rdev, false);

	FUNC15(rdev);
	FUNC5(rdev);
	FUNC6(rdev);
	FUNC8(rdev, false);

	FUNC7(rdev, rdev->pm.dpm.boot_ps);
}