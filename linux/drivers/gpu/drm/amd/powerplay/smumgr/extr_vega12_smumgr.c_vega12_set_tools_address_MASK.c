#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {TYPE_2__* entry; } ;
struct vega12_smumgr {TYPE_1__ smu_tables; } ;
struct pp_hwmgr {scalar_t__ smu_backend; } ;
struct TYPE_4__ {scalar_t__ mc_addr; } ;

/* Variables and functions */
 int /*<<< orphan*/  PPSMC_MSG_SetToolsDramAddrHigh ; 
 int /*<<< orphan*/  PPSMC_MSG_SetToolsDramAddrLow ; 
 size_t TABLE_PMSTATUSLOG ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (struct pp_hwmgr*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 

__attribute__((used)) static int FUNC3(struct pp_hwmgr *hwmgr)
{
	struct vega12_smumgr *priv =
			(struct vega12_smumgr *)(hwmgr->smu_backend);

	if (priv->smu_tables.entry[TABLE_PMSTATUSLOG].mc_addr) {
		if (!FUNC1(hwmgr,
				PPSMC_MSG_SetToolsDramAddrHigh,
				FUNC2(priv->smu_tables.entry[TABLE_PMSTATUSLOG].mc_addr)))
			FUNC1(hwmgr,
					PPSMC_MSG_SetToolsDramAddrLow,
					FUNC0(priv->smu_tables.entry[TABLE_PMSTATUSLOG].mc_addr));
	}
	return 0;
}