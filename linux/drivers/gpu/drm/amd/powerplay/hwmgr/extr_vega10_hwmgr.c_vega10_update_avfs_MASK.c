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
struct vega10_hwmgr {int need_update_dpm_table; } ;
struct pp_hwmgr {struct vega10_hwmgr* backend; } ;

/* Variables and functions */
 int DPMTABLE_OD_UPDATE_VDDC ; 
 int /*<<< orphan*/  FUNC0 (struct pp_hwmgr*,int) ; 

__attribute__((used)) static int FUNC1(struct pp_hwmgr *hwmgr)
{
	struct vega10_hwmgr *data = hwmgr->backend;

	if (data->need_update_dpm_table & DPMTABLE_OD_UPDATE_VDDC) {
		FUNC0(hwmgr, false);
	} else if (data->need_update_dpm_table) {
		FUNC0(hwmgr, false);
		FUNC0(hwmgr, true);
	} else {
		FUNC0(hwmgr, true);
	}

	return 0;
}