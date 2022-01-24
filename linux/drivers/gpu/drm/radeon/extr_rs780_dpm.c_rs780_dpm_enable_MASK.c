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
struct radeon_ps {int dummy; } ;
struct TYPE_3__ {struct radeon_ps* boot_ps; } ;
struct TYPE_4__ {TYPE_1__ dpm; } ;
struct radeon_device {TYPE_2__ pm; } ;
struct igp_power_info {scalar_t__ gfx_clock_gating; scalar_t__ voltage_control; } ;

/* Variables and functions */
 int EINVAL ; 
 scalar_t__ FUNC0 (struct radeon_device*) ; 
 int /*<<< orphan*/  FUNC1 (struct radeon_device*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct radeon_device*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct radeon_device*) ; 
 struct igp_power_info* FUNC4 (struct radeon_device*) ; 
 int /*<<< orphan*/  FUNC5 (struct radeon_device*) ; 
 int FUNC6 (struct radeon_device*,struct radeon_ps*) ; 
 int /*<<< orphan*/  FUNC7 (struct radeon_device*) ; 
 int /*<<< orphan*/  FUNC8 (struct radeon_device*) ; 
 int /*<<< orphan*/  FUNC9 (struct radeon_device*) ; 
 int /*<<< orphan*/  FUNC10 (struct radeon_device*) ; 
 int /*<<< orphan*/  FUNC11 (struct radeon_device*) ; 
 int /*<<< orphan*/  FUNC12 (struct radeon_device*) ; 
 int /*<<< orphan*/  FUNC13 (struct radeon_device*) ; 
 int /*<<< orphan*/  FUNC14 (struct radeon_device*) ; 
 int /*<<< orphan*/  FUNC15 (struct radeon_device*) ; 

int FUNC16(struct radeon_device *rdev)
{
	struct igp_power_info *pi = FUNC4(rdev);
	struct radeon_ps *boot_ps = rdev->pm.dpm.boot_ps;
	int ret;

	FUNC5(rdev);
	FUNC3(rdev);

	if (FUNC0(rdev))
		return -EINVAL;
	ret = FUNC6(rdev, boot_ps);
	if (ret)
		return ret;
	FUNC14(rdev);

	FUNC7(rdev);
	FUNC8(rdev);
	if (pi->voltage_control)
		FUNC15(rdev);
	FUNC2(rdev, true);
	FUNC10(rdev);
	FUNC13(rdev);
	FUNC9(rdev);
	FUNC12(rdev);
	FUNC11(rdev);

	if (pi->gfx_clock_gating)
		FUNC1(rdev, true);

	return 0;
}