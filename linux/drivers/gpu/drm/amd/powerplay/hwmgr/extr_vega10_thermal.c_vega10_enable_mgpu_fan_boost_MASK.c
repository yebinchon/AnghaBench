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
typedef  int /*<<< orphan*/  uint8_t ;
struct TYPE_10__ {scalar_t__ FanThrottlingRpm; } ;
struct TYPE_9__ {TYPE_5__ pp_table; } ;
struct vega10_hwmgr {TYPE_4__ smc_state_table; TYPE_1__* smu_features; } ;
struct TYPE_7__ {scalar_t__ usMGpuThrottlingRPMLimit; } ;
struct TYPE_8__ {TYPE_2__ advanceFanControlParameters; } ;
struct pp_hwmgr {TYPE_3__ thermal_controller; struct vega10_hwmgr* backend; } ;
struct TYPE_6__ {int /*<<< orphan*/  supported; } ;
typedef  TYPE_5__ PPTable_t ;

/* Variables and functions */
 size_t GNLD_FAN_CONTROL ; 
 int /*<<< orphan*/  PPTABLE ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int FUNC1 (struct pp_hwmgr*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int FUNC2 (struct pp_hwmgr*) ; 
 int FUNC3 (struct pp_hwmgr*) ; 

int FUNC4(struct pp_hwmgr *hwmgr)
{
	struct vega10_hwmgr *data = hwmgr->backend;
	PPTable_t *table = &(data->smc_state_table.pp_table);
	int ret;

	if (!data->smu_features[GNLD_FAN_CONTROL].supported)
		return 0;

	if (!hwmgr->thermal_controller.advanceFanControlParameters.
			usMGpuThrottlingRPMLimit)
		return 0;

	table->FanThrottlingRpm = hwmgr->thermal_controller.
			advanceFanControlParameters.usMGpuThrottlingRPMLimit;

	ret = FUNC1(hwmgr,
				(uint8_t *)(&(data->smc_state_table.pp_table)),
				PPTABLE, false);
	if (ret) {
		FUNC0("Failed to update fan control table in pptable!");
		return ret;
	}

	ret = FUNC2(hwmgr);
	if (ret) {
		FUNC0("Attempt to disable SMC fan control feature failed!");
		return ret;
	}

	ret = FUNC3(hwmgr);
	if (ret)
		FUNC0("Attempt to enable SMC fan control feature failed!");

	return ret;
}