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
typedef  int /*<<< orphan*/  uint32_t ;
struct TYPE_2__ {int TDPAdjustment; scalar_t__ TDPAdjustmentPolarity; } ;
struct pp_hwmgr {TYPE_1__ platform_descriptor; } ;

/* Variables and functions */
 int /*<<< orphan*/  PHM_PlatformCaps_PowerContainment ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (struct pp_hwmgr*,int /*<<< orphan*/ ) ; 

int FUNC2(struct pp_hwmgr *hwmgr)
{
	int adjust_percent, result = 0;

	if (FUNC0(PHM_PlatformCaps_PowerContainment)) {
		adjust_percent =
				hwmgr->platform_descriptor.TDPAdjustmentPolarity ?
				hwmgr->platform_descriptor.TDPAdjustment :
				(-1 * hwmgr->platform_descriptor.TDPAdjustment);
		result = FUNC1(hwmgr,
				(uint32_t)adjust_percent);
	}
	return result;
}