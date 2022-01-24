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
typedef  int uint32_t ;
struct TYPE_2__ {int cc6_setting_changed; int cpu_pstate_separation_time; scalar_t__ cpu_pstate_disable; scalar_t__ cpu_cc6_disable; } ;
struct smu8_hwmgr {TYPE_1__ cc6_settings; } ;
struct pp_hwmgr {struct smu8_hwmgr* backend; } ;

/* Variables and functions */
 int /*<<< orphan*/  PPSMC_MSG_SetDisplaySizePowerParams ; 
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 int PWRMGT_DISABLE_CPU_CSTATES_SHIFT ; 
 int PWRMGT_DISABLE_CPU_PSTATES_SHIFT ; 
 int PWRMGT_SEPARATION_TIME_MASK ; 
 int PWRMGT_SEPARATION_TIME_SHIFT ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (struct pp_hwmgr*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC3(struct pp_hwmgr *hwmgr)
{
	struct smu8_hwmgr *hw_data = hwmgr->backend;
	uint32_t data = 0;

	if (hw_data->cc6_settings.cc6_setting_changed) {

		hw_data->cc6_settings.cc6_setting_changed = false;

		FUNC1(&hw_data->cc6_settings);

		data |= (hw_data->cc6_settings.cpu_pstate_separation_time
			& PWRMGT_SEPARATION_TIME_MASK)
			<< PWRMGT_SEPARATION_TIME_SHIFT;

		data |= (hw_data->cc6_settings.cpu_cc6_disable ? 0x1 : 0x0)
			<< PWRMGT_DISABLE_CPU_CSTATES_SHIFT;

		data |= (hw_data->cc6_settings.cpu_pstate_disable ? 0x1 : 0x0)
			<< PWRMGT_DISABLE_CPU_PSTATES_SHIFT;

		FUNC0("SetDisplaySizePowerParams data: 0x%X\n",
			data);

		FUNC2(hwmgr,
						PPSMC_MSG_SetDisplaySizePowerParams,
						data);
	}

	return 0;
}