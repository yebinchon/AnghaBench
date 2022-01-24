#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct kv_power_info {scalar_t__ enable_auto_thermal_throttling; } ;
struct TYPE_6__ {int /*<<< orphan*/  irq; } ;
struct TYPE_7__ {TYPE_2__ thermal; } ;
struct TYPE_8__ {TYPE_3__ dpm; int /*<<< orphan*/  int_thermal_type; } ;
struct TYPE_5__ {scalar_t__ installed; } ;
struct amdgpu_device {TYPE_4__ pm; TYPE_1__ irq; } ;

/* Variables and functions */
 int /*<<< orphan*/  AMDGPU_THERMAL_IRQ_HIGH_TO_LOW ; 
 int /*<<< orphan*/  AMDGPU_THERMAL_IRQ_LOW_TO_HIGH ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  KV_TEMP_RANGE_MAX ; 
 int /*<<< orphan*/  KV_TEMP_RANGE_MIN ; 
 int /*<<< orphan*/  FUNC1 (struct amdgpu_device*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (struct amdgpu_device*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct amdgpu_device*) ; 
 int FUNC5 (struct amdgpu_device*) ; 
 int FUNC6 (struct amdgpu_device*,int) ; 
 int FUNC7 (struct amdgpu_device*) ; 
 int FUNC8 (struct amdgpu_device*,int) ; 
 int FUNC9 (struct amdgpu_device*,int) ; 
 struct kv_power_info* FUNC10 (struct amdgpu_device*) ; 
 int /*<<< orphan*/  FUNC11 (struct amdgpu_device*) ; 
 int /*<<< orphan*/  FUNC12 (struct amdgpu_device*) ; 
 int /*<<< orphan*/  FUNC13 (struct amdgpu_device*) ; 
 int FUNC14 (struct amdgpu_device*) ; 
 int FUNC15 (struct amdgpu_device*) ; 
 int FUNC16 (struct amdgpu_device*) ; 
 int FUNC17 (struct amdgpu_device*) ; 
 int FUNC18 (struct amdgpu_device*) ; 
 int FUNC19 (struct amdgpu_device*) ; 
 int /*<<< orphan*/  FUNC20 (struct amdgpu_device*) ; 
 int /*<<< orphan*/  FUNC21 (struct amdgpu_device*) ; 
 int FUNC22 (struct amdgpu_device*) ; 
 int FUNC23 (struct amdgpu_device*) ; 
 int FUNC24 (struct amdgpu_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC25 (struct amdgpu_device*) ; 
 int /*<<< orphan*/  FUNC26 (struct amdgpu_device*) ; 
 int FUNC27 (struct amdgpu_device*) ; 

__attribute__((used)) static int FUNC28(struct amdgpu_device *adev)
{
	struct kv_power_info *pi = FUNC10(adev);
	int ret;

	ret = FUNC18(adev);
	if (ret) {
		FUNC0("kv_process_firmware_header failed\n");
		return ret;
	}
	FUNC11(adev);
	FUNC12(adev);
	ret = FUNC19(adev);
	if (ret) {
		FUNC0("kv_program_bootup_state failed\n");
		return ret;
	}
	FUNC4(adev);
	ret = FUNC27(adev);
	if (ret) {
		FUNC0("kv_upload_dpm_settings failed\n");
		return ret;
	}
	ret = FUNC16(adev);
	if (ret) {
		FUNC0("kv_populate_uvd_table failed\n");
		return ret;
	}
	ret = FUNC17(adev);
	if (ret) {
		FUNC0("kv_populate_vce_table failed\n");
		return ret;
	}
	ret = FUNC15(adev);
	if (ret) {
		FUNC0("kv_populate_samu_table failed\n");
		return ret;
	}
	ret = FUNC14(adev);
	if (ret) {
		FUNC0("kv_populate_acp_table failed\n");
		return ret;
	}
	FUNC20(adev);
#if 0
	kv_initialize_hardware_cac_manager(adev);
#endif
	FUNC25(adev);
	if (pi->enable_auto_thermal_throttling) {
		ret = FUNC5(adev);
		if (ret) {
			FUNC0("kv_enable_auto_thermal_throttling failed\n");
			return ret;
		}
	}
	ret = FUNC7(adev);
	if (ret) {
		FUNC0("kv_enable_dpm_voltage_scaling failed\n");
		return ret;
	}
	ret = FUNC23(adev);
	if (ret) {
		FUNC0("kv_set_dpm_interval failed\n");
		return ret;
	}
	ret = FUNC22(adev);
	if (ret) {
		FUNC0("kv_set_dpm_boot_state failed\n");
		return ret;
	}
	ret = FUNC9(adev, true);
	if (ret) {
		FUNC0("kv_enable_ulv failed\n");
		return ret;
	}
	FUNC26(adev);
	ret = FUNC6(adev, true);
	if (ret) {
		FUNC0("kv_enable_didt failed\n");
		return ret;
	}
	ret = FUNC8(adev, true);
	if (ret) {
		FUNC0("kv_enable_smc_cac failed\n");
		return ret;
	}

	FUNC21(adev);

	ret = FUNC3(adev, false);
	if (ret) {
		FUNC0("amdgpu_kv_smc_bapm_enable failed\n");
		return ret;
	}

	if (adev->irq.installed &&
	    FUNC2(adev->pm.int_thermal_type)) {
		ret = FUNC24(adev, KV_TEMP_RANGE_MIN, KV_TEMP_RANGE_MAX);
		if (ret) {
			FUNC0("kv_set_thermal_temperature_range failed\n");
			return ret;
		}
		FUNC1(adev, &adev->pm.dpm.thermal.irq,
			       AMDGPU_THERMAL_IRQ_LOW_TO_HIGH);
		FUNC1(adev, &adev->pm.dpm.thermal.irq,
			       AMDGPU_THERMAL_IRQ_HIGH_TO_LOW);
	}

	return ret;
}