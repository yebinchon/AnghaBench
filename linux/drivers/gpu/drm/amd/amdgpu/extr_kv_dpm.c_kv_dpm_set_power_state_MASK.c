#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct amdgpu_ps {int dummy; } ;
struct kv_power_info {scalar_t__ enable_dpm; scalar_t__ bapm_enable; struct amdgpu_ps current_rps; struct amdgpu_ps requested_rps; } ;
struct TYPE_2__ {int /*<<< orphan*/  ac_power; } ;
struct amdgpu_device {scalar_t__ asic_type; TYPE_1__ pm; } ;

/* Variables and functions */
 scalar_t__ CHIP_KABINI ; 
 scalar_t__ CHIP_MULLINS ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int FUNC1 (struct amdgpu_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct amdgpu_device*) ; 
 int FUNC3 (struct amdgpu_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct amdgpu_device*) ; 
 int /*<<< orphan*/  FUNC5 (struct amdgpu_device*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct amdgpu_device*) ; 
 int /*<<< orphan*/  FUNC7 (struct amdgpu_device*) ; 
 int /*<<< orphan*/  FUNC8 (struct amdgpu_device*,int) ; 
 struct kv_power_info* FUNC9 (struct amdgpu_device*) ; 
 int /*<<< orphan*/  FUNC10 (struct amdgpu_device*,struct amdgpu_ps*) ; 
 int /*<<< orphan*/  FUNC11 (struct amdgpu_device*) ; 
 int /*<<< orphan*/  FUNC12 (struct amdgpu_device*,struct amdgpu_ps*) ; 
 int /*<<< orphan*/  FUNC13 (struct amdgpu_device*) ; 
 int /*<<< orphan*/  FUNC14 (struct amdgpu_device*) ; 
 int /*<<< orphan*/  FUNC15 (struct amdgpu_device*,struct amdgpu_ps*) ; 
 int /*<<< orphan*/  FUNC16 (struct amdgpu_device*) ; 
 int FUNC17 (struct amdgpu_device*,struct amdgpu_ps*,struct amdgpu_ps*) ; 
 int /*<<< orphan*/  FUNC18 (struct amdgpu_device*) ; 

__attribute__((used)) static int FUNC19(void *handle)
{
	struct amdgpu_device *adev = (struct amdgpu_device *)handle;
	struct kv_power_info *pi = FUNC9(adev);
	struct amdgpu_ps *new_ps = &pi->requested_rps;
	struct amdgpu_ps *old_ps = &pi->current_rps;
	int ret;

	if (pi->bapm_enable) {
		ret = FUNC1(adev, adev->pm.ac_power);
		if (ret) {
			FUNC0("amdgpu_kv_smc_bapm_enable failed\n");
			return ret;
		}
	}

	if (adev->asic_type == CHIP_KABINI || adev->asic_type == CHIP_MULLINS) {
		if (pi->enable_dpm) {
			FUNC12(adev, new_ps);
			FUNC15(adev, new_ps);
			ret = FUNC3(adev);
			if (ret) {
				FUNC0("kv_calculate_ds_divider failed\n");
				return ret;
			}
			FUNC4(adev);
			FUNC2(adev);
			FUNC7(adev);
			FUNC6(adev);
			FUNC18(adev);
			FUNC10(adev, new_ps);
			FUNC13(adev);
			FUNC11(adev);
			FUNC7(adev);
			FUNC13(adev);

			ret = FUNC17(adev, new_ps, old_ps);
			if (ret) {
				FUNC0("kv_update_vce_dpm failed\n");
				return ret;
			}
			FUNC16(adev);
			if (adev->asic_type == CHIP_MULLINS)
				FUNC5(adev, true);
		}
	} else {
		if (pi->enable_dpm) {
			FUNC12(adev, new_ps);
			FUNC15(adev, new_ps);
			ret = FUNC3(adev);
			if (ret) {
				FUNC0("kv_calculate_ds_divider failed\n");
				return ret;
			}
			FUNC4(adev);
			FUNC2(adev);
			FUNC8(adev, true);
			FUNC18(adev);
			FUNC10(adev, new_ps);
			FUNC8(adev, false);
			FUNC11(adev);
			ret = FUNC17(adev, new_ps, old_ps);
			if (ret) {
				FUNC0("kv_update_vce_dpm failed\n");
				return ret;
			}
			FUNC14(adev);
			FUNC16(adev);
			FUNC5(adev, true);
		}
	}

	return 0;
}