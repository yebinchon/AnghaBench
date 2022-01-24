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
struct TYPE_2__ {scalar_t__ max_vddc; } ;
struct smu7_hwmgr {TYPE_1__ odn_dpm_table; int /*<<< orphan*/  dpm_table; int /*<<< orphan*/  golden_dpm_table; } ;
struct smu7_dpm_table {int dummy; } ;
struct pp_hwmgr {scalar_t__ pp_table_version; scalar_t__ od_enabled; scalar_t__ backend; } ;

/* Variables and functions */
 scalar_t__ PP_TABLE_V0 ; 
 scalar_t__ PP_TABLE_V1 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (struct pp_hwmgr*) ; 
 int /*<<< orphan*/  FUNC2 (struct pp_hwmgr*) ; 
 int /*<<< orphan*/  FUNC3 (struct pp_hwmgr*) ; 
 int /*<<< orphan*/  FUNC4 (struct pp_hwmgr*) ; 
 int /*<<< orphan*/  FUNC5 (struct pp_hwmgr*) ; 
 int /*<<< orphan*/  FUNC6 (struct pp_hwmgr*) ; 
 int /*<<< orphan*/  FUNC7 (struct pp_hwmgr*) ; 

__attribute__((used)) static int FUNC8(struct pp_hwmgr *hwmgr)
{
	struct smu7_hwmgr *data = (struct smu7_hwmgr *)(hwmgr->backend);

	FUNC3(hwmgr);

	if (hwmgr->pp_table_version == PP_TABLE_V1)
		FUNC6(hwmgr);
	else if (hwmgr->pp_table_version == PP_TABLE_V0)
		FUNC5(hwmgr);

	FUNC4(hwmgr);

	/* save a copy of the default DPM table */
	FUNC0(&(data->golden_dpm_table), &(data->dpm_table),
			sizeof(struct smu7_dpm_table));

	/* initialize ODN table */
	if (hwmgr->od_enabled) {
		if (data->odn_dpm_table.max_vddc) {
			FUNC1(hwmgr);
		} else {
			FUNC7(hwmgr);
			FUNC2(hwmgr);
		}
	}
	return 0;
}