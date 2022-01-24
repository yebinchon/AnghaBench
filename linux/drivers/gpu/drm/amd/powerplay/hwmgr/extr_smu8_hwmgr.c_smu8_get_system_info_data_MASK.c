#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_5__ ;
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int uint8_t ;
typedef  size_t uint32_t ;
typedef  int /*<<< orphan*/  uint16_t ;
struct TYPE_8__ {int bootup_uma_clock; int bootup_engine_clock; int dentist_vco_freq; int system_config; int htc_hyst_lmt; int htc_tmp_lmt; int nb_dpm_enable; int* nbp_memory_clock; int* nbp_n_clock; int* display_clock; int /*<<< orphan*/  uma_channel_number; void** nbp_voltage_index; void* bootup_nb_voltage_index; } ;
struct smu8_hwmgr {TYPE_3__ sys_info; scalar_t__ enable_nb_ps_policy; } ;
struct TYPE_9__ {int /*<<< orphan*/  max_clock_voltage_on_ac; } ;
struct TYPE_7__ {int /*<<< orphan*/  platformCaps; } ;
struct pp_hwmgr {TYPE_4__ dyn_state; TYPE_2__ platform_descriptor; int /*<<< orphan*/  adev; struct smu8_hwmgr* backend; } ;
struct TYPE_10__ {int ucHtcHystLmt; int ucHtcTmpLmt; int /*<<< orphan*/ * sDISPCLK_Voltage; int /*<<< orphan*/  ucUMAChannelNumber; int /*<<< orphan*/  ulGPUCapInfo; int /*<<< orphan*/ * usNBPStateVoltage; TYPE_1__* sDispClkVoltageMapping; int /*<<< orphan*/ * ulNbpStateNClkFreq; int /*<<< orphan*/ * ulNbpStateMemclkFreq; int /*<<< orphan*/  ulSystemConfig; int /*<<< orphan*/  usBootUpNBVoltage; int /*<<< orphan*/  ulDentistVCOFreq; int /*<<< orphan*/  ulBootUpEngineClock; int /*<<< orphan*/  ulBootUpUMAClock; } ;
struct TYPE_6__ {int /*<<< orphan*/  ulMaximumSupportedCLK; } ;
typedef  TYPE_5__ ATOM_INTEGRATED_SYSTEM_INFO_V1_9 ;

/* Variables and functions */
 int /*<<< orphan*/  DATA ; 
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  IntegratedSystemInfo ; 
 size_t MAX_DISPLAY_CLOCK_LEVEL ; 
 int /*<<< orphan*/  PHM_PlatformCaps_EnableDFSBypass ; 
 size_t SMU8_NUM_NBPMEMORYCLOCK ; 
 size_t SMU8_NUM_NBPSTATES ; 
 int SYS_INFO_GPUCAPS__ENABEL_DFS_BYPASS ; 
 void* FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*,...) ; 
 int /*<<< orphan*/  FUNC5 (struct pp_hwmgr*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct pp_hwmgr*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int*,int*) ; 

__attribute__((used)) static int FUNC8(struct pp_hwmgr *hwmgr)
{
	struct smu8_hwmgr *data = hwmgr->backend;
	ATOM_INTEGRATED_SYSTEM_INFO_V1_9 *info = NULL;
	uint32_t i;
	int result = 0;
	uint8_t frev, crev;
	uint16_t size;

	info = (ATOM_INTEGRATED_SYSTEM_INFO_V1_9 *)FUNC7(hwmgr->adev,
			FUNC0(DATA, IntegratedSystemInfo),
			&size, &frev, &crev);

	if (info == NULL) {
		FUNC4("Could not retrieve the Integrated System Info Table!\n");
		return -EINVAL;
	}

	if (crev != 9) {
		FUNC4("Unsupported IGP table: %d %d\n", frev, crev);
		return -EINVAL;
	}

	data->sys_info.bootup_uma_clock =
				   FUNC2(info->ulBootUpUMAClock);

	data->sys_info.bootup_engine_clock =
				FUNC2(info->ulBootUpEngineClock);

	data->sys_info.dentist_vco_freq =
				   FUNC2(info->ulDentistVCOFreq);

	data->sys_info.system_config =
				     FUNC2(info->ulSystemConfig);

	data->sys_info.bootup_nb_voltage_index =
				  FUNC1(info->usBootUpNBVoltage);

	data->sys_info.htc_hyst_lmt =
			(info->ucHtcHystLmt == 0) ? 5 : info->ucHtcHystLmt;

	data->sys_info.htc_tmp_lmt =
			(info->ucHtcTmpLmt == 0) ? 203 : info->ucHtcTmpLmt;

	if (data->sys_info.htc_tmp_lmt <=
			data->sys_info.htc_hyst_lmt) {
		FUNC4("The htcTmpLmt should be larger than htcHystLmt.\n");
		return -EINVAL;
	}

	data->sys_info.nb_dpm_enable =
				data->enable_nb_ps_policy &&
				(FUNC2(info->ulSystemConfig) >> 3 & 0x1);

	for (i = 0; i < SMU8_NUM_NBPSTATES; i++) {
		if (i < SMU8_NUM_NBPMEMORYCLOCK) {
			data->sys_info.nbp_memory_clock[i] =
			  FUNC2(info->ulNbpStateMemclkFreq[i]);
		}
		data->sys_info.nbp_n_clock[i] =
			    FUNC2(info->ulNbpStateNClkFreq[i]);
	}

	for (i = 0; i < MAX_DISPLAY_CLOCK_LEVEL; i++) {
		data->sys_info.display_clock[i] =
					FUNC2(info->sDispClkVoltageMapping[i].ulMaximumSupportedCLK);
	}

	/* Here use 4 levels, make sure not exceed */
	for (i = 0; i < SMU8_NUM_NBPSTATES; i++) {
		data->sys_info.nbp_voltage_index[i] =
			     FUNC1(info->usNBPStateVoltage[i]);
	}

	if (!data->sys_info.nb_dpm_enable) {
		for (i = 1; i < SMU8_NUM_NBPSTATES; i++) {
			if (i < SMU8_NUM_NBPMEMORYCLOCK) {
				data->sys_info.nbp_memory_clock[i] =
				    data->sys_info.nbp_memory_clock[0];
			}
			data->sys_info.nbp_n_clock[i] =
				    data->sys_info.nbp_n_clock[0];
			data->sys_info.nbp_voltage_index[i] =
				    data->sys_info.nbp_voltage_index[0];
		}
	}

	if (FUNC2(info->ulGPUCapInfo) &
		SYS_INFO_GPUCAPS__ENABEL_DFS_BYPASS) {
		FUNC3(hwmgr->platform_descriptor.platformCaps,
				    PHM_PlatformCaps_EnableDFSBypass);
	}

	data->sys_info.uma_channel_number = info->ucUMAChannelNumber;

	FUNC5 (hwmgr,
				    &hwmgr->dyn_state.max_clock_voltage_on_ac);

	FUNC6(hwmgr,
				    &info->sDISPCLK_Voltage[0]);

	return result;
}