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
struct pp_hwmgr {int fan_ctrl_is_in_default_mode; int gfxoff_state_changed_by_workload; int chip_family; int feature_mask; int od_enabled; int /*<<< orphan*/ * smumgr_funcs; int /*<<< orphan*/  chip_id; void* pp_table_version; void* request_dpm_level; void* dpm_level; int /*<<< orphan*/  usec_timeout; } ;

/* Variables and functions */
#define  AMDGPU_FAMILY_AI 143 
#define  AMDGPU_FAMILY_CI 142 
#define  AMDGPU_FAMILY_CZ 141 
#define  AMDGPU_FAMILY_RV 140 
#define  AMDGPU_FAMILY_VI 139 
 void* AMD_DPM_FORCED_LEVEL_AUTO ; 
 int /*<<< orphan*/  AMD_MAX_USEC_TIMEOUT ; 
#define  CHIP_FIJI 138 
#define  CHIP_POLARIS10 137 
#define  CHIP_POLARIS11 136 
#define  CHIP_POLARIS12 135 
#define  CHIP_RAVEN 134 
#define  CHIP_TONGA 133 
#define  CHIP_TOPAZ 132 
#define  CHIP_VEGA10 131 
#define  CHIP_VEGA12 130 
#define  CHIP_VEGA20 129 
#define  CHIP_VEGAM 128 
 int EINVAL ; 
 int PP_ENABLE_GFX_CG_THRU_SMU ; 
 int PP_GFXOFF_MASK ; 
 void* PP_TABLE_V0 ; 
 void* PP_TABLE_V1 ; 
 int PP_UVD_HANDSHAKE_MASK ; 
 int PP_VBI_TIME_SUPPORT_MASK ; 
 int /*<<< orphan*/  FUNC0 (struct pp_hwmgr*) ; 
 int /*<<< orphan*/  ci_smu_funcs ; 
 int /*<<< orphan*/  FUNC1 (struct pp_hwmgr*) ; 
 int /*<<< orphan*/  fiji_smu_funcs ; 
 int /*<<< orphan*/  FUNC2 (struct pp_hwmgr*) ; 
 int /*<<< orphan*/  FUNC3 (struct pp_hwmgr*) ; 
 int /*<<< orphan*/  FUNC4 (struct pp_hwmgr*) ; 
 int /*<<< orphan*/  iceland_smu_funcs ; 
 int /*<<< orphan*/  polaris10_smu_funcs ; 
 int /*<<< orphan*/  FUNC5 (struct pp_hwmgr*) ; 
 int /*<<< orphan*/  FUNC6 (struct pp_hwmgr*) ; 
 int /*<<< orphan*/  smu10_smu_funcs ; 
 int /*<<< orphan*/  FUNC7 (struct pp_hwmgr*) ; 
 int /*<<< orphan*/  FUNC8 (struct pp_hwmgr*) ; 
 int /*<<< orphan*/  smu8_smu_funcs ; 
 int /*<<< orphan*/  FUNC9 (struct pp_hwmgr*) ; 
 int /*<<< orphan*/  tonga_smu_funcs ; 
 int /*<<< orphan*/  FUNC10 (struct pp_hwmgr*) ; 
 int /*<<< orphan*/  FUNC11 (struct pp_hwmgr*) ; 
 int /*<<< orphan*/  vega10_smu_funcs ; 
 int /*<<< orphan*/  FUNC12 (struct pp_hwmgr*) ; 
 int /*<<< orphan*/  vega12_smu_funcs ; 
 int /*<<< orphan*/  FUNC13 (struct pp_hwmgr*) ; 
 int /*<<< orphan*/  vega20_smu_funcs ; 
 int /*<<< orphan*/  vegam_smu_funcs ; 

int FUNC14(struct pp_hwmgr *hwmgr)
{
	if (!hwmgr)
		return -EINVAL;

	hwmgr->usec_timeout = AMD_MAX_USEC_TIMEOUT;
	hwmgr->pp_table_version = PP_TABLE_V1;
	hwmgr->dpm_level = AMD_DPM_FORCED_LEVEL_AUTO;
	hwmgr->request_dpm_level = AMD_DPM_FORCED_LEVEL_AUTO;
	FUNC2(hwmgr);
	FUNC4(hwmgr);
	hwmgr->fan_ctrl_is_in_default_mode = true;
	FUNC3(hwmgr);
	hwmgr->gfxoff_state_changed_by_workload = false;

	switch (hwmgr->chip_family) {
	case AMDGPU_FAMILY_CI:
		hwmgr->smumgr_funcs = &ci_smu_funcs;
		FUNC0(hwmgr);
		hwmgr->feature_mask &= ~(PP_VBI_TIME_SUPPORT_MASK |
					 PP_ENABLE_GFX_CG_THRU_SMU |
					 PP_GFXOFF_MASK);
		hwmgr->pp_table_version = PP_TABLE_V0;
		hwmgr->od_enabled = false;
		FUNC7(hwmgr);
		break;
	case AMDGPU_FAMILY_CZ:
		hwmgr->od_enabled = false;
		hwmgr->smumgr_funcs = &smu8_smu_funcs;
		hwmgr->feature_mask &= ~PP_GFXOFF_MASK;
		FUNC8(hwmgr);
		break;
	case AMDGPU_FAMILY_VI:
		hwmgr->feature_mask &= ~PP_GFXOFF_MASK;
		switch (hwmgr->chip_id) {
		case CHIP_TOPAZ:
			hwmgr->smumgr_funcs = &iceland_smu_funcs;
			FUNC10(hwmgr);
			hwmgr->feature_mask &= ~ (PP_VBI_TIME_SUPPORT_MASK |
						PP_ENABLE_GFX_CG_THRU_SMU);
			hwmgr->pp_table_version = PP_TABLE_V0;
			hwmgr->od_enabled = false;
			break;
		case CHIP_TONGA:
			hwmgr->smumgr_funcs = &tonga_smu_funcs;
			FUNC9(hwmgr);
			hwmgr->feature_mask &= ~PP_VBI_TIME_SUPPORT_MASK;
			break;
		case CHIP_FIJI:
			hwmgr->smumgr_funcs = &fiji_smu_funcs;
			FUNC1(hwmgr);
			hwmgr->feature_mask &= ~ (PP_VBI_TIME_SUPPORT_MASK |
						PP_ENABLE_GFX_CG_THRU_SMU);
			break;
		case CHIP_POLARIS11:
		case CHIP_POLARIS10:
		case CHIP_POLARIS12:
			hwmgr->smumgr_funcs = &polaris10_smu_funcs;
			FUNC5(hwmgr);
			hwmgr->feature_mask &= ~(PP_UVD_HANDSHAKE_MASK);
			break;
		case CHIP_VEGAM:
			hwmgr->smumgr_funcs = &vegam_smu_funcs;
			FUNC5(hwmgr);
			hwmgr->feature_mask &= ~(PP_UVD_HANDSHAKE_MASK);
			break;
		default:
			return -EINVAL;
		}
		FUNC7(hwmgr);
		break;
	case AMDGPU_FAMILY_AI:
		switch (hwmgr->chip_id) {
		case CHIP_VEGA10:
			hwmgr->feature_mask &= ~PP_GFXOFF_MASK;
			hwmgr->smumgr_funcs = &vega10_smu_funcs;
			FUNC11(hwmgr);
			break;
		case CHIP_VEGA12:
			hwmgr->smumgr_funcs = &vega12_smu_funcs;
			FUNC12(hwmgr);
			break;
		case CHIP_VEGA20:
			hwmgr->feature_mask &= ~PP_GFXOFF_MASK;
			hwmgr->smumgr_funcs = &vega20_smu_funcs;
			FUNC13(hwmgr);
			break;
		default:
			return -EINVAL;
		}
		break;
	case AMDGPU_FAMILY_RV:
		switch (hwmgr->chip_id) {
		case CHIP_RAVEN:
			hwmgr->od_enabled = false;
			hwmgr->smumgr_funcs = &smu10_smu_funcs;
			FUNC6(hwmgr);
			break;
		default:
			return -EINVAL;
		}
		break;
	default:
		return -EINVAL;
	}

	return 0;
}