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
struct TYPE_3__ {int /*<<< orphan*/  ac_power; } ;
struct TYPE_4__ {TYPE_1__ dpm; } ;
struct radeon_device {scalar_t__ family; TYPE_2__ pm; } ;
struct kv_power_info {scalar_t__ enable_dpm; scalar_t__ bapm_enable; struct radeon_ps current_rps; struct radeon_ps requested_rps; } ;

/* Variables and functions */
 scalar_t__ CHIP_KABINI ; 
 scalar_t__ CHIP_MULLINS ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (struct radeon_device*) ; 
 int FUNC2 (struct radeon_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct radeon_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct radeon_device*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct radeon_device*) ; 
 int /*<<< orphan*/  FUNC6 (struct radeon_device*) ; 
 int /*<<< orphan*/  FUNC7 (struct radeon_device*,int) ; 
 struct kv_power_info* FUNC8 (struct radeon_device*) ; 
 int /*<<< orphan*/  FUNC9 (struct radeon_device*,struct radeon_ps*) ; 
 int /*<<< orphan*/  FUNC10 (struct radeon_device*) ; 
 int /*<<< orphan*/  FUNC11 (struct radeon_device*,struct radeon_ps*) ; 
 int FUNC12 (struct radeon_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (struct radeon_device*) ; 
 int /*<<< orphan*/  FUNC14 (struct radeon_device*) ; 
 int /*<<< orphan*/  FUNC15 (struct radeon_device*,struct radeon_ps*) ; 
 int /*<<< orphan*/  FUNC16 (struct radeon_device*) ; 
 int FUNC17 (struct radeon_device*,struct radeon_ps*,struct radeon_ps*) ; 
 int /*<<< orphan*/  FUNC18 (struct radeon_device*) ; 

int FUNC19(struct radeon_device *rdev)
{
	struct kv_power_info *pi = FUNC8(rdev);
	struct radeon_ps *new_ps = &pi->requested_rps;
	struct radeon_ps *old_ps = &pi->current_rps;
	int ret;

	if (pi->bapm_enable) {
		ret = FUNC12(rdev, rdev->pm.dpm.ac_power);
		if (ret) {
			FUNC0("kv_smc_bapm_enable failed\n");
			return ret;
		}
	}

	if (rdev->family == CHIP_KABINI || rdev->family == CHIP_MULLINS) {
		if (pi->enable_dpm) {
			FUNC11(rdev, new_ps);
			FUNC15(rdev, new_ps);
			ret = FUNC2(rdev);
			if (ret) {
				FUNC0("kv_calculate_ds_divider failed\n");
				return ret;
			}
			FUNC3(rdev);
			FUNC1(rdev);
			FUNC6(rdev);
			FUNC5(rdev);
			FUNC18(rdev);
			FUNC9(rdev, new_ps);
			FUNC13(rdev);
			FUNC10(rdev);
			FUNC6(rdev);
			FUNC13(rdev);

			ret = FUNC17(rdev, new_ps, old_ps);
			if (ret) {
				FUNC0("kv_update_vce_dpm failed\n");
				return ret;
			}
			FUNC16(rdev);
			if (rdev->family == CHIP_MULLINS)
				FUNC4(rdev, true);
		}
	} else {
		if (pi->enable_dpm) {
			FUNC11(rdev, new_ps);
			FUNC15(rdev, new_ps);
			ret = FUNC2(rdev);
			if (ret) {
				FUNC0("kv_calculate_ds_divider failed\n");
				return ret;
			}
			FUNC3(rdev);
			FUNC1(rdev);
			FUNC7(rdev, true);
			FUNC18(rdev);
			FUNC9(rdev, new_ps);
			FUNC7(rdev, false);
			FUNC10(rdev);
			ret = FUNC17(rdev, new_ps, old_ps);
			if (ret) {
				FUNC0("kv_update_vce_dpm failed\n");
				return ret;
			}
			FUNC14(rdev);
			FUNC16(rdev);
			FUNC4(rdev, true);
		}
	}

	return 0;
}