#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct radeon_ps {int dummy; } ;
struct radeon_device {int dummy; } ;
struct ci_power_info {scalar_t__ pcie_performance_request; scalar_t__ caps_dynamic_ac_timing; struct radeon_ps current_rps; struct radeon_ps requested_rps; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (struct radeon_device*,struct radeon_ps*) ; 
 int FUNC2 (struct radeon_device*) ; 
 int FUNC3 (struct radeon_device*,struct radeon_ps*) ; 
 struct ci_power_info* FUNC4 (struct radeon_device*) ; 
 int /*<<< orphan*/  FUNC5 (struct radeon_device*,struct radeon_ps*,struct radeon_ps*) ; 
 int FUNC6 (struct radeon_device*,struct radeon_ps*) ; 
 int FUNC7 (struct radeon_device*) ; 
 int /*<<< orphan*/  FUNC8 (struct radeon_device*,struct radeon_ps*,struct radeon_ps*) ; 
 int FUNC9 (struct radeon_device*) ; 
 int FUNC10 (struct radeon_device*) ; 
 int FUNC11 (struct radeon_device*) ; 
 int FUNC12 (struct radeon_device*,struct radeon_ps*,struct radeon_ps*) ; 
 int FUNC13 (struct radeon_device*) ; 

int FUNC14(struct radeon_device *rdev)
{
	struct ci_power_info *pi = FUNC4(rdev);
	struct radeon_ps *new_ps = &pi->requested_rps;
	struct radeon_ps *old_ps = &pi->current_rps;
	int ret;

	FUNC1(rdev, new_ps);
	if (pi->pcie_performance_request)
		FUNC8(rdev, new_ps, old_ps);
	ret = FUNC2(rdev);
	if (ret) {
		FUNC0("ci_freeze_sclk_mclk_dpm failed\n");
		return ret;
	}
	ret = FUNC6(rdev, new_ps);
	if (ret) {
		FUNC0("ci_populate_and_upload_sclk_mclk_dpm_levels failed\n");
		return ret;
	}
	ret = FUNC3(rdev, new_ps);
	if (ret) {
		FUNC0("ci_generate_dpm_level_enable_mask failed\n");
		return ret;
	}

	ret = FUNC12(rdev, new_ps, old_ps);
	if (ret) {
		FUNC0("ci_update_vce_dpm failed\n");
		return ret;
	}

	ret = FUNC11(rdev);
	if (ret) {
		FUNC0("ci_update_sclk_t failed\n");
		return ret;
	}
	if (pi->caps_dynamic_ac_timing) {
		ret = FUNC10(rdev);
		if (ret) {
			FUNC0("ci_update_and_upload_mc_reg_table failed\n");
			return ret;
		}
	}
	ret = FUNC7(rdev);
	if (ret) {
		FUNC0("ci_program_memory_timing_parameters failed\n");
		return ret;
	}
	ret = FUNC9(rdev);
	if (ret) {
		FUNC0("ci_unfreeze_sclk_mclk_dpm failed\n");
		return ret;
	}
	ret = FUNC13(rdev);
	if (ret) {
		FUNC0("ci_upload_dpm_level_enable_mask failed\n");
		return ret;
	}
	if (pi->pcie_performance_request)
		FUNC5(rdev, new_ps, old_ps);

	return 0;
}