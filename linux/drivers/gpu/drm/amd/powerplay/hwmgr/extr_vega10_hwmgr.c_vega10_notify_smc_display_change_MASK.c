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
 int /*<<< orphan*/  PPSMC_MSG_SetUclkFastSwitch ; 
 int /*<<< orphan*/  FUNC0 (struct pp_hwmgr*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC1(struct pp_hwmgr *hwmgr,
		bool has_disp)
{
	FUNC0(hwmgr,
			PPSMC_MSG_SetUclkFastSwitch,
			has_disp ? 1 : 0);
}