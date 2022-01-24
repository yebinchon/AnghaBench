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
struct pp_hwmgr {TYPE_1__* hwmgr_func; } ;
typedef  enum amd_dpm_forced_level { ____Placeholder_amd_dpm_forced_level } amd_dpm_forced_level ;
struct TYPE_2__ {int (* force_dpm_level ) (struct pp_hwmgr*,int) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct pp_hwmgr*) ; 
 int FUNC1 (struct pp_hwmgr*,int) ; 

int FUNC2(struct pp_hwmgr *hwmgr, enum amd_dpm_forced_level level)
{
	int ret = 0;

	FUNC0(hwmgr);

	if (hwmgr->hwmgr_func->force_dpm_level != NULL)
		ret = hwmgr->hwmgr_func->force_dpm_level(hwmgr, level);

	return ret;
}