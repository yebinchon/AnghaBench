#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int uint32_t ;
struct TYPE_6__ {int usMaxFanRPM; } ;
struct TYPE_4__ {scalar_t__ bNoFan; } ;
struct TYPE_5__ {TYPE_3__ advanceFanControlParameters; TYPE_1__ fanInfo; } ;
struct pp_hwmgr {TYPE_2__ thermal_controller; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct pp_hwmgr*,int*) ; 

int FUNC1(struct pp_hwmgr *hwmgr,
		uint32_t *speed)
{
	uint32_t current_rpm;
	uint32_t percent = 0;

	if (hwmgr->thermal_controller.fanInfo.bNoFan)
		return 0;

	if (FUNC0(hwmgr, &current_rpm))
		return -1;

	if (hwmgr->thermal_controller.
			advanceFanControlParameters.usMaxFanRPM != 0)
		percent = current_rpm * 100 /
			hwmgr->thermal_controller.
			advanceFanControlParameters.usMaxFanRPM;

	*speed = percent > 100 ? 100 : percent;

	return 0;
}