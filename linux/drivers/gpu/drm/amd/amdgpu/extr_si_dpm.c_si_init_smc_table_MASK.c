#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_6__ ;
typedef  struct TYPE_14__   TYPE_5__ ;
typedef  struct TYPE_13__   TYPE_4__ ;
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
typedef  int /*<<< orphan*/  u32 ;
struct TYPE_14__ {scalar_t__ vddc; } ;
struct si_ulv_param {int /*<<< orphan*/  cg_ulv_parameter; int /*<<< orphan*/  cg_ulv_control; TYPE_5__ pl; scalar_t__ supported; } ;
struct TYPE_15__ {int /*<<< orphan*/  initialState; int /*<<< orphan*/  ULVState; int /*<<< orphan*/  driverState; int /*<<< orphan*/  systemFlags; int /*<<< orphan*/  extraFlags; int /*<<< orphan*/  thermalProtectType; } ;
struct si_power_info {int /*<<< orphan*/  sram_end; int /*<<< orphan*/  state_table_start; TYPE_6__ smc_statetable; struct si_ulv_param ulv; } ;
struct amdgpu_ps {int dummy; } ;
struct TYPE_12__ {int platform_caps; int /*<<< orphan*/  backbias_response_time; struct amdgpu_ps* boot_ps; } ;
struct TYPE_13__ {int int_thermal_type; TYPE_3__ dpm; } ;
struct TYPE_11__ {scalar_t__ vram_type; } ;
struct amdgpu_device {TYPE_4__ pm; TYPE_2__ gmc; TYPE_1__* pdev; } ;
struct TYPE_10__ {int device; } ;
typedef  TYPE_6__ SISLANDS_SMC_STATETABLE ;

/* Variables and functions */
 scalar_t__ AMDGPU_VRAM_TYPE_GDDR5 ; 
 int ATOM_PP_PLATFORM_CAP_HARDWAREDC ; 
 int ATOM_PP_PLATFORM_CAP_REGULATOR_HOT ; 
 int ATOM_PP_PLATFORM_CAP_REVERT_GPIO5_POLARITY ; 
 int ATOM_PP_PLATFORM_CAP_STEPVDDC ; 
 int ATOM_PP_PLATFORM_CAP_VRHOT_GPIO_CONFIGURABLE ; 
 int /*<<< orphan*/  CG_ULV_CONTROL ; 
 int /*<<< orphan*/  CG_ULV_PARAMETER ; 
 int /*<<< orphan*/  PPSMC_EXTRAFLAGS_AC2DC_GPIO5_POLARITY_HIGH ; 
 int /*<<< orphan*/  PPSMC_SYSTEMFLAG_GDDR5 ; 
 int /*<<< orphan*/  PPSMC_SYSTEMFLAG_GPIO_DC ; 
 int /*<<< orphan*/  PPSMC_SYSTEMFLAG_REGULATOR_HOT ; 
 int /*<<< orphan*/  PPSMC_SYSTEMFLAG_REGULATOR_HOT_PROG_GPIO ; 
 int /*<<< orphan*/  PPSMC_SYSTEMFLAG_STEPVDDC ; 
 int /*<<< orphan*/  PPSMC_THERMAL_PROTECT_TYPE_EXTERNAL ; 
 int /*<<< orphan*/  PPSMC_THERMAL_PROTECT_TYPE_INTERNAL ; 
 int /*<<< orphan*/  PPSMC_THERMAL_PROTECT_TYPE_NONE ; 
 int /*<<< orphan*/  SISLANDS_INITIAL_STATE_ARB_INDEX ; 
 int /*<<< orphan*/  SI_SMC_SOFT_REGISTER_non_ulv_pcie_link_width ; 
 int /*<<< orphan*/  SI_SMC_SOFT_REGISTER_vr_hot_gpio ; 
#define  THERMAL_TYPE_EMC2103_WITH_INTERNAL 130 
#define  THERMAL_TYPE_NONE 129 
#define  THERMAL_TYPE_SI 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct amdgpu_device*) ; 
 int FUNC2 (struct amdgpu_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct amdgpu_device*,struct amdgpu_ps*,int /*<<< orphan*/ ) ; 
 struct si_power_info* FUNC4 (struct amdgpu_device*) ; 
 int FUNC5 (struct amdgpu_device*,TYPE_6__*) ; 
 int FUNC6 (struct amdgpu_device*,struct amdgpu_ps*,TYPE_6__*) ; 
 int /*<<< orphan*/  FUNC7 (struct amdgpu_device*,TYPE_6__*) ; 
 int FUNC8 (struct amdgpu_device*,int /*<<< orphan*/ *) ; 
 int FUNC9 (struct amdgpu_device*) ; 
 int /*<<< orphan*/  FUNC10 (struct amdgpu_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC11(struct amdgpu_device *adev)
{
	struct si_power_info *si_pi = FUNC4(adev);
	struct amdgpu_ps *amdgpu_boot_state = adev->pm.dpm.boot_ps;
	const struct si_ulv_param *ulv = &si_pi->ulv;
	SISLANDS_SMC_STATETABLE  *table = &si_pi->smc_statetable;
	int ret;
	u32 lane_width;
	u32 vr_hot_gpio;

	FUNC7(adev, table);

	switch (adev->pm.int_thermal_type) {
	case THERMAL_TYPE_SI:
	case THERMAL_TYPE_EMC2103_WITH_INTERNAL:
		table->thermalProtectType = PPSMC_THERMAL_PROTECT_TYPE_INTERNAL;
		break;
	case THERMAL_TYPE_NONE:
		table->thermalProtectType = PPSMC_THERMAL_PROTECT_TYPE_NONE;
		break;
	default:
		table->thermalProtectType = PPSMC_THERMAL_PROTECT_TYPE_EXTERNAL;
		break;
	}

	if (adev->pm.dpm.platform_caps & ATOM_PP_PLATFORM_CAP_HARDWAREDC)
		table->systemFlags |= PPSMC_SYSTEMFLAG_GPIO_DC;

	if (adev->pm.dpm.platform_caps & ATOM_PP_PLATFORM_CAP_REGULATOR_HOT) {
		if ((adev->pdev->device != 0x6818) && (adev->pdev->device != 0x6819))
			table->systemFlags |= PPSMC_SYSTEMFLAG_REGULATOR_HOT;
	}

	if (adev->pm.dpm.platform_caps & ATOM_PP_PLATFORM_CAP_STEPVDDC)
		table->systemFlags |= PPSMC_SYSTEMFLAG_STEPVDDC;

	if (adev->gmc.vram_type == AMDGPU_VRAM_TYPE_GDDR5)
		table->systemFlags |= PPSMC_SYSTEMFLAG_GDDR5;

	if (adev->pm.dpm.platform_caps & ATOM_PP_PLATFORM_CAP_REVERT_GPIO5_POLARITY)
		table->extraFlags |= PPSMC_EXTRAFLAGS_AC2DC_GPIO5_POLARITY_HIGH;

	if (adev->pm.dpm.platform_caps & ATOM_PP_PLATFORM_CAP_VRHOT_GPIO_CONFIGURABLE) {
		table->systemFlags |= PPSMC_SYSTEMFLAG_REGULATOR_HOT_PROG_GPIO;
		vr_hot_gpio = adev->pm.dpm.backbias_response_time;
		FUNC10(adev, SI_SMC_SOFT_REGISTER_vr_hot_gpio,
					   vr_hot_gpio);
	}

	ret = FUNC6(adev, amdgpu_boot_state, table);
	if (ret)
		return ret;

	ret = FUNC5(adev, table);
	if (ret)
		return ret;

	table->driverState = table->initialState;

	ret = FUNC3(adev, amdgpu_boot_state,
						     SISLANDS_INITIAL_STATE_ARB_INDEX);
	if (ret)
		return ret;

	if (ulv->supported && ulv->pl.vddc) {
		ret = FUNC8(adev, &table->ULVState);
		if (ret)
			return ret;

		ret = FUNC9(adev);
		if (ret)
			return ret;

		FUNC0(CG_ULV_CONTROL, ulv->cg_ulv_control);
		FUNC0(CG_ULV_PARAMETER, ulv->cg_ulv_parameter);

		lane_width = FUNC1(adev);
		FUNC10(adev, SI_SMC_SOFT_REGISTER_non_ulv_pcie_link_width, lane_width);
	} else {
		table->ULVState = table->initialState;
	}

	return FUNC2(adev, si_pi->state_table_start,
					   (u8 *)table, sizeof(SISLANDS_SMC_STATETABLE),
					   si_pi->sram_end);
}