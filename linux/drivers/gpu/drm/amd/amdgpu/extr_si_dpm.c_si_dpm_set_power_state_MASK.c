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
struct amdgpu_ps {int dummy; } ;
struct evergreen_power_info {scalar_t__ pcie_performance_request; scalar_t__ dynamic_ac_timing; struct amdgpu_ps current_rps; struct amdgpu_ps requested_rps; } ;
struct amdgpu_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 struct evergreen_power_info* FUNC1 (struct amdgpu_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct amdgpu_device*,struct amdgpu_ps*,struct amdgpu_ps*) ; 
 int /*<<< orphan*/  FUNC3 (struct amdgpu_device*,struct amdgpu_ps*,struct amdgpu_ps*) ; 
 int FUNC4 (struct amdgpu_device*) ; 
 int FUNC5 (struct amdgpu_device*,struct amdgpu_ps*,int) ; 
 int FUNC6 (struct amdgpu_device*,struct amdgpu_ps*,int) ; 
 int FUNC7 (struct amdgpu_device*) ; 
 int /*<<< orphan*/  FUNC8 (struct amdgpu_device*,struct amdgpu_ps*,struct amdgpu_ps*) ; 
 int FUNC9 (struct amdgpu_device*) ; 
 int FUNC10 (struct amdgpu_device*,struct amdgpu_ps*) ; 
 int /*<<< orphan*/  FUNC11 (struct amdgpu_device*,struct amdgpu_ps*,struct amdgpu_ps*) ; 
 int FUNC12 (struct amdgpu_device*) ; 
 int FUNC13 (struct amdgpu_device*) ; 
 int /*<<< orphan*/  FUNC14 (struct amdgpu_device*,struct amdgpu_ps*,struct amdgpu_ps*) ; 
 int FUNC15 (struct amdgpu_device*,struct amdgpu_ps*) ; 
 int FUNC16 (struct amdgpu_device*) ; 
 int FUNC17 (struct amdgpu_device*,struct amdgpu_ps*) ; 
 int FUNC18 (struct amdgpu_device*) ; 
 int FUNC19 (struct amdgpu_device*,struct amdgpu_ps*) ; 
 int FUNC20 (struct amdgpu_device*) ; 

__attribute__((used)) static int FUNC21(void *handle)
{
	struct amdgpu_device *adev = (struct amdgpu_device *)handle;
	struct evergreen_power_info *eg_pi = FUNC1(adev);
	struct amdgpu_ps *new_ps = &eg_pi->requested_rps;
	struct amdgpu_ps *old_ps = &eg_pi->current_rps;
	int ret;

	ret = FUNC4(adev);
	if (ret) {
		FUNC0("si_disable_ulv failed\n");
		return ret;
	}
	ret = FUNC12(adev);
	if (ret) {
		FUNC0("si_restrict_performance_levels_before_switch failed\n");
		return ret;
	}
	if (eg_pi->pcie_performance_request)
		FUNC11(adev, new_ps, old_ps);
	FUNC3(adev, new_ps, old_ps);
	ret = FUNC5(adev, new_ps, false);
	if (ret) {
		FUNC0("si_enable_power_containment failed\n");
		return ret;
	}
	ret = FUNC6(adev, new_ps, false);
	if (ret) {
		FUNC0("si_enable_smc_cac failed\n");
		return ret;
	}
	ret = FUNC7(adev);
	if (ret) {
		FUNC0("si_halt_smc failed\n");
		return ret;
	}
	ret = FUNC19(adev, new_ps);
	if (ret) {
		FUNC0("si_upload_sw_state failed\n");
		return ret;
	}
	ret = FUNC18(adev);
	if (ret) {
		FUNC0("si_upload_smc_data failed\n");
		return ret;
	}
	ret = FUNC20(adev);
	if (ret) {
		FUNC0("si_upload_ulv_state failed\n");
		return ret;
	}
	if (eg_pi->dynamic_ac_timing) {
		ret = FUNC17(adev, new_ps);
		if (ret) {
			FUNC0("si_upload_mc_reg_table failed\n");
			return ret;
		}
	}
	ret = FUNC10(adev, new_ps);
	if (ret) {
		FUNC0("si_program_memory_timing_parameters failed\n");
		return ret;
	}
	FUNC14(adev, new_ps, old_ps);

	ret = FUNC13(adev);
	if (ret) {
		FUNC0("si_resume_smc failed\n");
		return ret;
	}
	ret = FUNC16(adev);
	if (ret) {
		FUNC0("si_set_sw_state failed\n");
		return ret;
	}
	FUNC2(adev, new_ps, old_ps);
	if (eg_pi->pcie_performance_request)
		FUNC8(adev, new_ps, old_ps);
	ret = FUNC15(adev, new_ps);
	if (ret) {
		FUNC0("si_set_power_state_conditionally_enable_ulv failed\n");
		return ret;
	}
	ret = FUNC6(adev, new_ps, true);
	if (ret) {
		FUNC0("si_enable_smc_cac failed\n");
		return ret;
	}
	ret = FUNC5(adev, new_ps, true);
	if (ret) {
		FUNC0("si_enable_power_containment failed\n");
		return ret;
	}

	ret = FUNC9(adev);
	if (ret) {
		FUNC0("si_power_control_set_level failed\n");
		return ret;
	}

	return 0;
}