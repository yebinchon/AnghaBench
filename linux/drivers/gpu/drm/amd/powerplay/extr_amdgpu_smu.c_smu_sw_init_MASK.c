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
struct TYPE_8__ {void* requested_dpm_level; void* dpm_level; } ;
struct TYPE_6__ {int platform_support; int /*<<< orphan*/  state; int /*<<< orphan*/  mutex; } ;
struct TYPE_5__ {int /*<<< orphan*/  allowed; int /*<<< orphan*/  enabled; int /*<<< orphan*/  supported; int /*<<< orphan*/  mutex; int /*<<< orphan*/  feature_num; } ;
struct smu_context {size_t power_profile_mode; size_t default_power_profile_mode; int workload_mask; int* workload_prority; size_t* workload_setting; TYPE_4__ smu_dpm; int /*<<< orphan*/ * display_config; scalar_t__ watermarks_bitmap; int /*<<< orphan*/  sensor_lock; TYPE_2__ smu_baco; TYPE_1__ smu_feature; int /*<<< orphan*/  pool_size; } ;
struct TYPE_7__ {int /*<<< orphan*/  pm_display_cfg; int /*<<< orphan*/  smu_prv_buffer_size; } ;
struct amdgpu_device {TYPE_3__ pm; struct smu_context smu; } ;

/* Variables and functions */
 void* AMD_DPM_FORCED_LEVEL_AUTO ; 
 size_t PP_SMC_POWER_PROFILE_BOOTUP_DEFAULT ; 
 size_t PP_SMC_POWER_PROFILE_COMPUTE ; 
 size_t PP_SMC_POWER_PROFILE_CUSTOM ; 
 size_t PP_SMC_POWER_PROFILE_FULLSCREEN3D ; 
 size_t PP_SMC_POWER_PROFILE_POWERSAVING ; 
 size_t PP_SMC_POWER_PROFILE_VIDEO ; 
 size_t PP_SMC_POWER_PROFILE_VR ; 
 int /*<<< orphan*/  SMU_BACO_STATE_EXIT ; 
 int /*<<< orphan*/  SMU_FEATURE_MAX ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int FUNC3 (struct smu_context*) ; 
 int FUNC4 (struct smu_context*) ; 
 int FUNC5 (struct smu_context*) ; 

__attribute__((used)) static int FUNC6(void *handle)
{
	struct amdgpu_device *adev = (struct amdgpu_device *)handle;
	struct smu_context *smu = &adev->smu;
	int ret;

	smu->pool_size = adev->pm.smu_prv_buffer_size;
	smu->smu_feature.feature_num = SMU_FEATURE_MAX;
	FUNC1(&smu->smu_feature.mutex);
	FUNC0(smu->smu_feature.supported, SMU_FEATURE_MAX);
	FUNC0(smu->smu_feature.enabled, SMU_FEATURE_MAX);
	FUNC0(smu->smu_feature.allowed, SMU_FEATURE_MAX);

	FUNC1(&smu->smu_baco.mutex);
	smu->smu_baco.state = SMU_BACO_STATE_EXIT;
	smu->smu_baco.platform_support = false;

	FUNC1(&smu->sensor_lock);

	smu->watermarks_bitmap = 0;
	smu->power_profile_mode = PP_SMC_POWER_PROFILE_BOOTUP_DEFAULT;
	smu->default_power_profile_mode = PP_SMC_POWER_PROFILE_BOOTUP_DEFAULT;

	smu->workload_mask = 1 << smu->workload_prority[PP_SMC_POWER_PROFILE_BOOTUP_DEFAULT];
	smu->workload_prority[PP_SMC_POWER_PROFILE_BOOTUP_DEFAULT] = 0;
	smu->workload_prority[PP_SMC_POWER_PROFILE_FULLSCREEN3D] = 1;
	smu->workload_prority[PP_SMC_POWER_PROFILE_POWERSAVING] = 2;
	smu->workload_prority[PP_SMC_POWER_PROFILE_VIDEO] = 3;
	smu->workload_prority[PP_SMC_POWER_PROFILE_VR] = 4;
	smu->workload_prority[PP_SMC_POWER_PROFILE_COMPUTE] = 5;
	smu->workload_prority[PP_SMC_POWER_PROFILE_CUSTOM] = 6;

	smu->workload_setting[0] = PP_SMC_POWER_PROFILE_BOOTUP_DEFAULT;
	smu->workload_setting[1] = PP_SMC_POWER_PROFILE_FULLSCREEN3D;
	smu->workload_setting[2] = PP_SMC_POWER_PROFILE_POWERSAVING;
	smu->workload_setting[3] = PP_SMC_POWER_PROFILE_VIDEO;
	smu->workload_setting[4] = PP_SMC_POWER_PROFILE_VR;
	smu->workload_setting[5] = PP_SMC_POWER_PROFILE_COMPUTE;
	smu->workload_setting[6] = PP_SMC_POWER_PROFILE_CUSTOM;
	smu->display_config = &adev->pm.pm_display_cfg;

	smu->smu_dpm.dpm_level = AMD_DPM_FORCED_LEVEL_AUTO;
	smu->smu_dpm.requested_dpm_level = AMD_DPM_FORCED_LEVEL_AUTO;
	ret = FUNC3(smu);
	if (ret) {
		FUNC2("Failed to load smu firmware!\n");
		return ret;
	}

	ret = FUNC5(smu);
	if (ret) {
		FUNC2("Failed to sw init smc table!\n");
		return ret;
	}

	ret = FUNC4(smu);
	if (ret) {
		FUNC2("Failed to register smc irq handler!\n");
		return ret;
	}

	return 0;
}