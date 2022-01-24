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
struct smu10_hwmgr {int vcn_power_gated; } ;
struct pp_hwmgr {int /*<<< orphan*/  adev; scalar_t__ backend; } ;

/* Variables and functions */
 int /*<<< orphan*/  AMD_IP_BLOCK_TYPE_VCN ; 
 int /*<<< orphan*/  AMD_PG_STATE_GATE ; 
 int /*<<< orphan*/  AMD_PG_STATE_UNGATE ; 
 int /*<<< orphan*/  PPSMC_MSG_PowerDownVcn ; 
 int /*<<< orphan*/  PPSMC_MSG_PowerUpVcn ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct pp_hwmgr*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(struct pp_hwmgr *hwmgr, bool bgate)
{
	struct smu10_hwmgr *smu10_data = (struct smu10_hwmgr *)(hwmgr->backend);

	if (bgate) {
		FUNC0(hwmgr->adev,
						AMD_IP_BLOCK_TYPE_VCN,
						AMD_PG_STATE_GATE);
		FUNC1(hwmgr,
					PPSMC_MSG_PowerDownVcn, 0);
		smu10_data->vcn_power_gated = true;
	} else {
		FUNC1(hwmgr,
						PPSMC_MSG_PowerUpVcn, 0);
		FUNC0(hwmgr->adev,
						AMD_IP_BLOCK_TYPE_VCN,
						AMD_PG_STATE_UNGATE);
		smu10_data->vcn_power_gated = false;
	}
}