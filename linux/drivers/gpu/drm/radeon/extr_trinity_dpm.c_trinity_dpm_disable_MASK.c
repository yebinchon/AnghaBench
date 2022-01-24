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
struct TYPE_4__ {int /*<<< orphan*/  boot_ps; } ;
struct TYPE_5__ {TYPE_1__ dpm; int /*<<< orphan*/  int_thermal_type; } ;
struct TYPE_6__ {int dpm_thermal; scalar_t__ installed; } ;
struct radeon_device {TYPE_2__ pm; TYPE_3__ irq; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct radeon_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct radeon_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct radeon_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct radeon_device*) ; 
 int /*<<< orphan*/  FUNC5 (struct radeon_device*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct radeon_device*) ; 
 int /*<<< orphan*/  FUNC7 (struct radeon_device*) ; 
 int /*<<< orphan*/  FUNC8 (struct radeon_device*) ; 
 int /*<<< orphan*/  FUNC9 (struct radeon_device*) ; 
 int /*<<< orphan*/  FUNC10 (struct radeon_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct radeon_device*) ; 

void FUNC12(struct radeon_device *rdev)
{
	FUNC3(rdev);
	if (!FUNC6(rdev)) {
		FUNC7(rdev);
		return;
	}
	FUNC5(rdev, false);
	FUNC4(rdev);
	FUNC2(rdev);
	FUNC11(rdev);
	FUNC9(rdev);
	FUNC8(rdev);
	FUNC7(rdev);

	if (rdev->irq.installed &&
	    FUNC0(rdev->pm.int_thermal_type)) {
		rdev->irq.dpm_thermal = false;
		FUNC1(rdev);
	}

	FUNC10(rdev, rdev->pm.dpm.boot_ps);
}