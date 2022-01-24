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
typedef  scalar_t__ uint32_t ;
struct TYPE_3__ {int /*<<< orphan*/  LowGfxclkInterruptThreshold; } ;
struct TYPE_4__ {TYPE_1__ pp_table; } ;
struct vega10_hwmgr {scalar_t__ low_sclk_interrupt_threshold; TYPE_2__ smc_state_table; } ;
struct pp_hwmgr {struct vega10_hwmgr* backend; } ;

/* Variables and functions */
 int /*<<< orphan*/  PHM_PlatformCaps_SclkThrottleLowNotification ; 
 int /*<<< orphan*/  PPSMC_MSG_SetLowGfxclkInterruptThreshold ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (struct pp_hwmgr*,int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static int FUNC3(struct pp_hwmgr *hwmgr)
{
	struct vega10_hwmgr *data = hwmgr->backend;
	uint32_t low_sclk_interrupt_threshold = 0;

	if (FUNC0(PHM_PlatformCaps_SclkThrottleLowNotification) &&
		(data->low_sclk_interrupt_threshold != 0)) {
		low_sclk_interrupt_threshold =
				data->low_sclk_interrupt_threshold;

		data->smc_state_table.pp_table.LowGfxclkInterruptThreshold =
				FUNC1(low_sclk_interrupt_threshold);

		/* This message will also enable SmcToHost Interrupt */
		FUNC2(hwmgr,
				PPSMC_MSG_SetLowGfxclkInterruptThreshold,
				(uint32_t)low_sclk_interrupt_threshold);
	}

	return 0;
}