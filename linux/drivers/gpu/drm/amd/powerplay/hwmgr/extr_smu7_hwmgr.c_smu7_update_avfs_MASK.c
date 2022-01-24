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
struct smu7_hwmgr {int need_update_smu7_dpm_table; } ;
struct pp_hwmgr {int /*<<< orphan*/  avfs_supported; scalar_t__ backend; } ;

/* Variables and functions */
 int DPMTABLE_OD_UPDATE_SCLK ; 
 int DPMTABLE_OD_UPDATE_VDDC ; 
 int /*<<< orphan*/  FUNC0 (struct pp_hwmgr*,int) ; 

__attribute__((used)) static int FUNC1(struct pp_hwmgr *hwmgr)
{
	struct smu7_hwmgr *data = (struct smu7_hwmgr *)(hwmgr->backend);

	if (!hwmgr->avfs_supported)
		return 0;

	if (data->need_update_smu7_dpm_table & DPMTABLE_OD_UPDATE_VDDC) {
		FUNC0(hwmgr, false);
	} else if (data->need_update_smu7_dpm_table & DPMTABLE_OD_UPDATE_SCLK) {
		FUNC0(hwmgr, false);
		FUNC0(hwmgr, true);
	} else {
		FUNC0(hwmgr, true);
	}

	return 0;
}