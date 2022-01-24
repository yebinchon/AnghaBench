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
typedef  int uint32_t ;
struct pp_hwmgr {int /*<<< orphan*/  device; } ;

/* Variables and functions */
 int /*<<< orphan*/  AUTO_INCREMENT_IND_0 ; 
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SMC_IND_ACCESS_CNTL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  mmSMC_IND_INDEX_0 ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 

__attribute__((used)) static int FUNC3(struct pp_hwmgr *hwmgr,
					uint32_t smc_addr, uint32_t limit)
{
	if ((0 != (3 & smc_addr))
		|| ((smc_addr + 3) >= limit)) {
		FUNC2("smc_addr invalid \n");
		return -EINVAL;
	}

	FUNC1(hwmgr->device, mmSMC_IND_INDEX_0, smc_addr);
	FUNC0(hwmgr->device, SMC_IND_ACCESS_CNTL, AUTO_INCREMENT_IND_0, 0);
	return 0;
}