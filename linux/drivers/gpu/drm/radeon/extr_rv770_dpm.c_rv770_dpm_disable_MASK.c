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
struct rv7xx_power_info {scalar_t__ mg_clock_gating; scalar_t__ gfx_clock_gating; scalar_t__ dynamic_pcie_gen2; scalar_t__ thermal_protection; } ;
struct TYPE_4__ {int dpm_thermal; scalar_t__ installed; } ;
struct TYPE_3__ {int /*<<< orphan*/  int_thermal_type; } ;
struct radeon_device {scalar_t__ family; TYPE_2__ irq; TYPE_1__ pm; } ;

/* Variables and functions */
 scalar_t__ CHIP_RV710 ; 
 scalar_t__ CHIP_RV730 ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct radeon_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct radeon_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct radeon_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct radeon_device*) ; 
 int /*<<< orphan*/  FUNC5 (struct radeon_device*) ; 
 int /*<<< orphan*/  FUNC6 (struct radeon_device*,int) ; 
 int /*<<< orphan*/  FUNC7 (struct radeon_device*,int) ; 
 int /*<<< orphan*/  FUNC8 (struct radeon_device*,int) ; 
 struct rv7xx_power_info* FUNC9 (struct radeon_device*) ; 
 int /*<<< orphan*/  FUNC10 (struct radeon_device*,int) ; 
 int /*<<< orphan*/  FUNC11 (struct radeon_device*,int) ; 
 int /*<<< orphan*/  FUNC12 (struct radeon_device*) ; 
 int /*<<< orphan*/  FUNC13 (struct radeon_device*) ; 

void FUNC14(struct radeon_device *rdev)
{
	struct rv7xx_power_info *pi = FUNC9(rdev);

	if (!FUNC5(rdev))
		return;

	FUNC4(rdev);

	if (pi->thermal_protection)
		FUNC8(rdev, false);

	FUNC7(rdev, false);

	if (pi->dynamic_pcie_gen2)
		FUNC6(rdev, false);

	if (rdev->irq.installed &&
	    FUNC0(rdev->pm.int_thermal_type)) {
		rdev->irq.dpm_thermal = false;
		FUNC2(rdev);
	}

	if (pi->gfx_clock_gating)
		FUNC10(rdev, false);

	if (pi->mg_clock_gating)
		FUNC11(rdev, false);

	if ((rdev->family == CHIP_RV730) || (rdev->family == CHIP_RV710))
		FUNC3(rdev);
	else
		FUNC13(rdev);

	FUNC1(rdev);
	FUNC12(rdev);
}