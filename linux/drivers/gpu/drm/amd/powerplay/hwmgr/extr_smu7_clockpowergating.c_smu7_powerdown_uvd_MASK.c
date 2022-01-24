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
struct pp_hwmgr {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  PPSMC_MSG_UVDPowerOFF ; 
 scalar_t__ FUNC0 (struct pp_hwmgr*) ; 
 int FUNC1 (struct pp_hwmgr*,int /*<<< orphan*/ ) ; 

int FUNC2(struct pp_hwmgr *hwmgr)
{
	if (FUNC0(hwmgr))
		return FUNC1(hwmgr,
				PPSMC_MSG_UVDPowerOFF);
	return 0;
}