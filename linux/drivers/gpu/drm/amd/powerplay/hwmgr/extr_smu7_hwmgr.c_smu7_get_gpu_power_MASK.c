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
typedef  scalar_t__ u32 ;
struct pp_hwmgr {int /*<<< orphan*/  device; } ;

/* Variables and functions */
 int /*<<< orphan*/  CGS_IND_REG__SMC ; 
 int EINVAL ; 
 int /*<<< orphan*/  PPSMC_MSG_GetCurrPkgPwr ; 
 int /*<<< orphan*/  PPSMC_MSG_PmStatusLogSample ; 
 int /*<<< orphan*/  PPSMC_MSG_PmStatusLogStart ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ixSMU_PM_STATUS_95 ; 
 int /*<<< orphan*/  mmSMC_MSG_ARG_0 ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (struct pp_hwmgr*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct pp_hwmgr*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(struct pp_hwmgr *hwmgr, u32 *query)
{
	int i;
	u32 tmp = 0;

	if (!query)
		return -EINVAL;

	FUNC5(hwmgr, PPSMC_MSG_GetCurrPkgPwr, 0);
	tmp = FUNC1(hwmgr->device, mmSMC_MSG_ARG_0);
	*query = tmp;

	if (tmp != 0)
		return 0;

	FUNC4(hwmgr, PPSMC_MSG_PmStatusLogStart);
	FUNC2(hwmgr->device, CGS_IND_REG__SMC,
							ixSMU_PM_STATUS_95, 0);

	for (i = 0; i < 10; i++) {
		FUNC3(500);
		FUNC4(hwmgr, PPSMC_MSG_PmStatusLogSample);
		tmp = FUNC0(hwmgr->device,
						CGS_IND_REG__SMC,
						ixSMU_PM_STATUS_95);
		if (tmp != 0)
			break;
	}
	*query = tmp;

	return 0;
}