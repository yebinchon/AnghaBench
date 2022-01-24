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
typedef  int /*<<< orphan*/  uint32_t ;
struct pp_hwmgr {int /*<<< orphan*/  device; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  mmSMC_IND_DATA_11 ; 
 int FUNC1 (struct pp_hwmgr*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC2(struct pp_hwmgr *hwmgr, uint32_t smc_addr, uint32_t value, uint32_t limit)
{
	int result;

	result = FUNC1(hwmgr, smc_addr, limit);

	if (result)
		return result;

	FUNC0(hwmgr->device, mmSMC_IND_DATA_11, value);

	return 0;
}