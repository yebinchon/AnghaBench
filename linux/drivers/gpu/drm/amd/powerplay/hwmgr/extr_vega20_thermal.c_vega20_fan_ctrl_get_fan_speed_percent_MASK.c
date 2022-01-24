#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int uint32_t ;
struct TYPE_4__ {int FanMaximumRpm; } ;
struct TYPE_3__ {TYPE_2__ pp_table; } ;
struct vega20_hwmgr {TYPE_1__ smc_state_table; } ;
struct pp_hwmgr {scalar_t__ backend; } ;
typedef  TYPE_2__ PPTable_t ;

/* Variables and functions */
 int FUNC0 (struct pp_hwmgr*,int*) ; 

int FUNC1(struct pp_hwmgr *hwmgr,
		uint32_t *speed)
{
	struct vega20_hwmgr *data = (struct vega20_hwmgr *)(hwmgr->backend);
	PPTable_t *pp_table = &(data->smc_state_table.pp_table);
	uint32_t current_rpm, percent = 0;
	int ret = 0;

	ret = FUNC0(hwmgr, &current_rpm);
	if (ret)
		return ret;

	percent = current_rpm * 100 / pp_table->FanMaximumRpm;

	*speed = percent > 100 ? 100 : percent;

	return 0;
}