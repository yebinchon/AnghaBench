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
struct pp_hwmgr {int /*<<< orphan*/ * device; } ;

/* Variables and functions */
 int EINVAL ; 
 scalar_t__ SMN_MP1_SRAM_START_ADDR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  mmMP0PUB_IND_INDEX_0 ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 

__attribute__((used)) static int FUNC2(struct pp_hwmgr *hwmgr,
				     uint32_t smc_address, uint32_t limit)
{
	if (hwmgr == NULL || hwmgr->device == NULL)
		return -EINVAL;

	if (0 != (3 & smc_address)) {
		FUNC1("SMC address must be 4 byte aligned\n");
		return -EINVAL;
	}

	if (limit <= (smc_address + 3)) {
		FUNC1("SMC address beyond the SMC RAM area\n");
		return -EINVAL;
	}

	FUNC0(hwmgr->device, mmMP0PUB_IND_INDEX_0,
				SMN_MP1_SRAM_START_ADDR + smc_address);

	return 0;
}