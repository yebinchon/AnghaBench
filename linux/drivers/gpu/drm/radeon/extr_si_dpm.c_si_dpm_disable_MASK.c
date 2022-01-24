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
struct rv7xx_power_info {scalar_t__ thermal_protection; } ;
struct radeon_ps {int dummy; } ;
struct TYPE_3__ {struct radeon_ps* boot_ps; } ;
struct TYPE_4__ {TYPE_1__ dpm; } ;
struct radeon_device {TYPE_2__ pm; } ;

/* Variables and functions */
 int /*<<< orphan*/  RADEON_DPM_AUTO_THROTTLE_SRC_THERMAL ; 
 int /*<<< orphan*/  FUNC0 (struct radeon_device*,struct radeon_ps*) ; 
 struct rv7xx_power_info* FUNC1 (struct radeon_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct radeon_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct radeon_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct radeon_device*) ; 
 int /*<<< orphan*/  FUNC5 (struct radeon_device*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (struct radeon_device*,struct radeon_ps*,int) ; 
 int /*<<< orphan*/  FUNC7 (struct radeon_device*,struct radeon_ps*,int) ; 
 int /*<<< orphan*/  FUNC8 (struct radeon_device*,int) ; 
 int /*<<< orphan*/  FUNC9 (struct radeon_device*,int) ; 
 int /*<<< orphan*/  FUNC10 (struct radeon_device*) ; 
 int /*<<< orphan*/  FUNC11 (struct radeon_device*) ; 
 int /*<<< orphan*/  FUNC12 (struct radeon_device*) ; 
 int /*<<< orphan*/  FUNC13 (struct radeon_device*) ; 
 int /*<<< orphan*/  FUNC14 (struct radeon_device*) ; 

void FUNC15(struct radeon_device *rdev)
{
	struct rv7xx_power_info *pi = FUNC1(rdev);
	struct radeon_ps *boot_ps = rdev->pm.dpm.boot_ps;

	if (!FUNC11(rdev))
		return;
	FUNC14(rdev);
	FUNC3(rdev);
	FUNC2(rdev);
	if (pi->thermal_protection)
		FUNC9(rdev, false);
	FUNC6(rdev, boot_ps, false);
	FUNC7(rdev, boot_ps, false);
	FUNC8(rdev, false);
	FUNC5(rdev, RADEON_DPM_AUTO_THROTTLE_SRC_THERMAL, false);
	FUNC13(rdev);
	FUNC12(rdev);
	FUNC4(rdev);
	FUNC10(rdev);

	FUNC0(rdev, boot_ps);
}