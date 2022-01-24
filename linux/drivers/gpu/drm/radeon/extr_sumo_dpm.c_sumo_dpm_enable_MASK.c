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
struct sumo_power_info {scalar_t__ enable_boost; scalar_t__ enable_sclk_ds; scalar_t__ enable_auto_thermal_throttling; } ;
struct TYPE_3__ {int /*<<< orphan*/  boot_ps; } ;
struct TYPE_4__ {TYPE_1__ dpm; } ;
struct radeon_device {TYPE_2__ pm; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  SUMO_VRC_DFLT ; 
 scalar_t__ FUNC0 (struct radeon_device*) ; 
 int /*<<< orphan*/  FUNC1 (struct radeon_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct radeon_device*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct radeon_device*,int) ; 
 struct sumo_power_info* FUNC4 (struct radeon_device*) ; 
 int /*<<< orphan*/  FUNC5 (struct radeon_device*) ; 
 int /*<<< orphan*/  FUNC6 (struct radeon_device*) ; 
 int /*<<< orphan*/  FUNC7 (struct radeon_device*) ; 
 int /*<<< orphan*/  FUNC8 (struct radeon_device*) ; 
 int /*<<< orphan*/  FUNC9 (struct radeon_device*) ; 
 int /*<<< orphan*/  FUNC10 (struct radeon_device*) ; 
 int /*<<< orphan*/  FUNC11 (struct radeon_device*) ; 
 int /*<<< orphan*/  FUNC12 (struct radeon_device*) ; 
 int /*<<< orphan*/  FUNC13 (struct radeon_device*) ; 
 int /*<<< orphan*/  FUNC14 (struct radeon_device*) ; 
 int /*<<< orphan*/  FUNC15 (struct radeon_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (struct radeon_device*) ; 
 int /*<<< orphan*/  FUNC17 (struct radeon_device*) ; 
 int /*<<< orphan*/  FUNC18 (struct radeon_device*) ; 
 int /*<<< orphan*/  FUNC19 (struct radeon_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC20 (struct radeon_device*) ; 

int FUNC21(struct radeon_device *rdev)
{
	struct sumo_power_info *pi = FUNC4(rdev);

	if (FUNC0(rdev))
		return -EINVAL;

	FUNC8(rdev);
	FUNC5(rdev);
	FUNC16(rdev);
	FUNC12(rdev);
	FUNC7(rdev);
	FUNC17(rdev);
	if (pi->enable_auto_thermal_throttling) {
		FUNC13(rdev);
		FUNC14(rdev);
	}
	FUNC9(rdev);
	FUNC10(rdev);
	FUNC3(rdev, true);
	FUNC11(rdev);
	FUNC15(rdev, SUMO_VRC_DFLT);
	FUNC6(rdev);
	FUNC18(rdev);
	FUNC20(rdev);
	if (pi->enable_sclk_ds)
		FUNC2(rdev, true);
	if (pi->enable_boost)
		FUNC1(rdev);

	FUNC19(rdev, rdev->pm.dpm.boot_ps);

	return 0;
}