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
struct vega10_hwmgr {TYPE_1__* smu_features; } ;
struct pp_hwmgr {struct vega10_hwmgr* backend; } ;
struct TYPE_2__ {int supported; int /*<<< orphan*/  smu_feature_bitmap; } ;

/* Variables and functions */
 size_t GNLD_PPT ; 
 size_t GNLD_TDC ; 
 int /*<<< orphan*/  PHM_PlatformCaps_PowerContainment ; 
 int /*<<< orphan*/  FUNC0 (int,char*,int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct pp_hwmgr*,int,int /*<<< orphan*/ ) ; 

int FUNC3(struct pp_hwmgr *hwmgr)
{
	struct vega10_hwmgr *data = hwmgr->backend;

	if (FUNC1(PHM_PlatformCaps_PowerContainment)) {
		if (data->smu_features[GNLD_PPT].supported)
			FUNC0(!FUNC2(hwmgr,
					false, data->smu_features[GNLD_PPT].smu_feature_bitmap),
					"Attempt to disable PPT feature Failed!",
					data->smu_features[GNLD_PPT].supported = false);

		if (data->smu_features[GNLD_TDC].supported)
			FUNC0(!FUNC2(hwmgr,
					false, data->smu_features[GNLD_TDC].smu_feature_bitmap),
					"Attempt to disable PPT feature Failed!",
					data->smu_features[GNLD_TDC].supported = false);
	}

	return 0;
}