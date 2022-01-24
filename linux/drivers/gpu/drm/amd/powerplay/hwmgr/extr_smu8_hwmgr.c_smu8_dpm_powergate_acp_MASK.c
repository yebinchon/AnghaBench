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
struct smu8_hwmgr {int acp_power_gated; } ;
struct pp_hwmgr {struct smu8_hwmgr* backend; } ;

/* Variables and functions */
 int /*<<< orphan*/  PPSMC_MSG_ACPPowerOFF ; 
 int /*<<< orphan*/  PPSMC_MSG_ACPPowerON ; 
 int /*<<< orphan*/  FUNC0 (struct pp_hwmgr*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC1(struct pp_hwmgr *hwmgr, bool bgate)
{
	struct smu8_hwmgr *data = hwmgr->backend;

	if (data->acp_power_gated == bgate)
		return;

	if (bgate)
		FUNC0(hwmgr, PPSMC_MSG_ACPPowerOFF);
	else
		FUNC0(hwmgr, PPSMC_MSG_ACPPowerON);
}