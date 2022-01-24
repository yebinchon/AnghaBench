#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int u16 ;
struct TYPE_5__ {struct radeon_cac_tdp_table* cac_tdp_table; } ;
struct TYPE_6__ {TYPE_1__ dyn_state; } ;
struct TYPE_7__ {TYPE_2__ dpm; } ;
struct radeon_device {TYPE_3__ pm; } ;
struct radeon_cac_tdp_table {int high_cac_leakage; int low_cac_leakage; } ;
struct TYPE_8__ {int BapmVddCBaseLeakageHiSidd; int BapmVddCBaseLeakageLoSidd; } ;
struct ci_power_info {TYPE_4__ smc_powertune_table; } ;

/* Variables and functions */
 struct ci_power_info* FUNC0 (struct radeon_device*) ; 
 void* FUNC1 (int) ; 

__attribute__((used)) static int FUNC2(struct radeon_device *rdev)
{
	struct ci_power_info *pi = FUNC0(rdev);
	u16 hi_sidd = pi->smc_powertune_table.BapmVddCBaseLeakageHiSidd;
	u16 lo_sidd = pi->smc_powertune_table.BapmVddCBaseLeakageLoSidd;
	struct radeon_cac_tdp_table *cac_tdp_table =
		rdev->pm.dpm.dyn_state.cac_tdp_table;

	hi_sidd = cac_tdp_table->high_cac_leakage / 100 * 256;
	lo_sidd = cac_tdp_table->low_cac_leakage / 100 * 256;

	pi->smc_powertune_table.BapmVddCBaseLeakageHiSidd = FUNC1(hi_sidd);
	pi->smc_powertune_table.BapmVddCBaseLeakageLoSidd = FUNC1(lo_sidd);

	return 0;
}