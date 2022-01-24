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
typedef  int /*<<< orphan*/  uint32_t ;
struct pp_hwmgr {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  PPSMC_MSG_OverDriveSetPercentage ; 
 int /*<<< orphan*/  FUNC0 (struct pp_hwmgr*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC1(struct pp_hwmgr *hwmgr,
		uint32_t adjust_percent)
{
	FUNC0(hwmgr,
			PPSMC_MSG_OverDriveSetPercentage, adjust_percent);
}