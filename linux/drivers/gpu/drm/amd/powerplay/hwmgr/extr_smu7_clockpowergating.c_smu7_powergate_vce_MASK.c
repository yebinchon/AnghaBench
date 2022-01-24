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
struct smu7_hwmgr {int vce_power_gated; } ;
struct pp_hwmgr {int /*<<< orphan*/  adev; scalar_t__ backend; } ;

/* Variables and functions */
 int /*<<< orphan*/  AMD_CG_STATE_GATE ; 
 int /*<<< orphan*/  AMD_CG_STATE_UNGATE ; 
 int /*<<< orphan*/  AMD_IP_BLOCK_TYPE_VCE ; 
 int /*<<< orphan*/  AMD_PG_STATE_GATE ; 
 int /*<<< orphan*/  AMD_PG_STATE_UNGATE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct pp_hwmgr*) ; 
 int /*<<< orphan*/  FUNC3 (struct pp_hwmgr*) ; 
 int /*<<< orphan*/  FUNC4 (struct pp_hwmgr*,int) ; 

void FUNC5(struct pp_hwmgr *hwmgr, bool bgate)
{
	struct smu7_hwmgr *data = (struct smu7_hwmgr *)(hwmgr->backend);

	data->vce_power_gated = bgate;

	if (bgate) {
		FUNC1(hwmgr->adev,
						AMD_IP_BLOCK_TYPE_VCE,
						AMD_PG_STATE_GATE);
		FUNC0(hwmgr->adev,
				AMD_IP_BLOCK_TYPE_VCE,
				AMD_CG_STATE_GATE);
		FUNC4(hwmgr, true);
		FUNC2(hwmgr);
	} else {
		FUNC3(hwmgr);
		FUNC0(hwmgr->adev,
				AMD_IP_BLOCK_TYPE_VCE,
				AMD_CG_STATE_UNGATE);
		FUNC1(hwmgr->adev,
						AMD_IP_BLOCK_TYPE_VCE,
						AMD_PG_STATE_UNGATE);
		FUNC4(hwmgr, false);
	}
}