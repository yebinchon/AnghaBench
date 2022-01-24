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
struct sumo_power_info {scalar_t__ enable_sclk_ds; } ;
struct TYPE_4__ {int /*<<< orphan*/  boot_ps; } ;
struct TYPE_6__ {TYPE_1__ dpm; int /*<<< orphan*/  int_thermal_type; } ;
struct TYPE_5__ {int dpm_thermal; scalar_t__ installed; } ;
struct radeon_device {TYPE_3__ pm; TYPE_2__ irq; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct radeon_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct radeon_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct radeon_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct radeon_device*) ; 
 int /*<<< orphan*/  FUNC5 (struct radeon_device*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct radeon_device*,int) ; 
 struct sumo_power_info* FUNC7 (struct radeon_device*) ; 
 int /*<<< orphan*/  FUNC8 (struct radeon_device*) ; 
 int /*<<< orphan*/  FUNC9 (struct radeon_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct radeon_device*) ; 

void FUNC11(struct radeon_device *rdev)
{
	struct sumo_power_info *pi = FUNC7(rdev);

	if (!FUNC4(rdev))
		return;
	FUNC3(rdev);
	if (pi->enable_sclk_ds)
		FUNC5(rdev, false);
	FUNC2(rdev);
	FUNC10(rdev);
	FUNC8(rdev);
	FUNC6(rdev, false);

	if (rdev->irq.installed &&
	    FUNC0(rdev->pm.int_thermal_type)) {
		rdev->irq.dpm_thermal = false;
		FUNC1(rdev);
	}

	FUNC9(rdev, rdev->pm.dpm.boot_ps);
}