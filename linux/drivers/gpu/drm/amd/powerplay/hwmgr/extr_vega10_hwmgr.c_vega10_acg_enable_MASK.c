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
typedef  int uint32_t ;
struct vega10_hwmgr {int acg_loop_state; TYPE_1__* smu_features; } ;
struct pp_hwmgr {struct vega10_hwmgr* backend; } ;
struct TYPE_2__ {int enabled; int /*<<< orphan*/  smu_feature_bitmap; scalar_t__ supported; } ;

/* Variables and functions */
 size_t GNLD_ACG ; 
 size_t GNLD_DPM_PREFETCHER ; 
 int /*<<< orphan*/  PPSMC_MSG_InitializeAcg ; 
 int /*<<< orphan*/  PPSMC_MSG_RunAcgBtc ; 
 int /*<<< orphan*/  PPSMC_MSG_RunAcgInClosedLoop ; 
 int /*<<< orphan*/  PPSMC_MSG_RunAcgInOpenLoop ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int FUNC1 (struct pp_hwmgr*) ; 
 int /*<<< orphan*/  FUNC2 (struct pp_hwmgr*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (struct pp_hwmgr*,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct pp_hwmgr *hwmgr)
{
	struct vega10_hwmgr *data = hwmgr->backend;
	uint32_t agc_btc_response;

	if (data->smu_features[GNLD_ACG].supported) {
		if (0 == FUNC3(hwmgr, true,
					data->smu_features[GNLD_DPM_PREFETCHER].smu_feature_bitmap))
			data->smu_features[GNLD_DPM_PREFETCHER].enabled = true;

		FUNC2(hwmgr, PPSMC_MSG_InitializeAcg);

		FUNC2(hwmgr, PPSMC_MSG_RunAcgBtc);
		agc_btc_response = FUNC1(hwmgr);

		if (1 == agc_btc_response) {
			if (1 == data->acg_loop_state)
				FUNC2(hwmgr, PPSMC_MSG_RunAcgInClosedLoop);
			else if (2 == data->acg_loop_state)
				FUNC2(hwmgr, PPSMC_MSG_RunAcgInOpenLoop);
			if (0 == FUNC3(hwmgr, true,
				data->smu_features[GNLD_ACG].smu_feature_bitmap))
					data->smu_features[GNLD_ACG].enabled = true;
		} else {
			FUNC0("[ACG_Enable] ACG BTC Returned Failed Status!\n");
			data->smu_features[GNLD_ACG].enabled = false;
		}
	}

	return 0;
}