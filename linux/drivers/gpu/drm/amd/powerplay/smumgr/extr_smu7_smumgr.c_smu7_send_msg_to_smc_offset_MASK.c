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
struct pp_hwmgr {int /*<<< orphan*/  device; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct pp_hwmgr*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int PPSMC_MSG_Test ; 
 int /*<<< orphan*/  SMC_RESP ; 
 int /*<<< orphan*/  SMC_RESP_0 ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  mmSMC_MESSAGE_0 ; 
 int /*<<< orphan*/  mmSMC_MSG_ARG_0 ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 

int FUNC4(struct pp_hwmgr *hwmgr)
{
	FUNC2(hwmgr->device, mmSMC_MSG_ARG_0, 0x20000);

	FUNC2(hwmgr->device, mmSMC_MESSAGE_0, PPSMC_MSG_Test);

	FUNC1(hwmgr, SMC_RESP_0, SMC_RESP, 0);

	if (1 != FUNC0(hwmgr->device, SMC_RESP_0, SMC_RESP))
		FUNC3("Failed to send Message.\n");

	return 0;
}