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
struct vega20_hwmgr {int vce_power_gated; } ;
struct pp_hwmgr {int /*<<< orphan*/  adev; scalar_t__ backend; } ;

/* Variables and functions */
 int /*<<< orphan*/  AMD_IP_BLOCK_TYPE_VCE ; 
 int /*<<< orphan*/  AMD_PG_STATE_GATE ; 
 int /*<<< orphan*/  AMD_PG_STATE_UNGATE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct pp_hwmgr*,int) ; 

__attribute__((used)) static void FUNC2(struct pp_hwmgr *hwmgr, bool bgate)
{
	struct vega20_hwmgr *data = (struct vega20_hwmgr *)(hwmgr->backend);

	if (data->vce_power_gated == bgate)
		return ;

	data->vce_power_gated = bgate;
	if (bgate) {
		FUNC1(hwmgr, !bgate);
		FUNC0(hwmgr->adev,
						AMD_IP_BLOCK_TYPE_VCE,
						AMD_PG_STATE_GATE);
	} else {
		FUNC0(hwmgr->adev,
						AMD_IP_BLOCK_TYPE_VCE,
						AMD_PG_STATE_UNGATE);
		FUNC1(hwmgr, !bgate);
	}

}