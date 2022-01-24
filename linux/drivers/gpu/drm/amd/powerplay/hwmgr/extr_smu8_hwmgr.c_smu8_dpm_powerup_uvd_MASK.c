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
 int /*<<< orphan*/  PHM_PlatformCaps_UVDDynamicPowerGating ; 
 int /*<<< orphan*/  PHM_PlatformCaps_UVDPowerGating ; 
 int /*<<< orphan*/  PPSMC_MSG_UVDPowerON ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (struct pp_hwmgr*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC2(struct pp_hwmgr *hwmgr)
{
	if (FUNC0(PHM_PlatformCaps_UVDPowerGating)) {
		return FUNC1(
			hwmgr,
			PPSMC_MSG_UVDPowerON,
			FUNC0(PHM_PlatformCaps_UVDDynamicPowerGating) ? 1 : 0);
	}

	return 0;
}