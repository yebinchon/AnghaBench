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
struct smu7_hwmgr {int need_long_memory_training; int mem_latency_high; int mem_latency_low; } ;
struct TYPE_2__ {int MC; } ;
struct pp_hwmgr {scalar_t__ chip_id; int /*<<< orphan*/  device; TYPE_1__ microcode_version_info; scalar_t__ backend; } ;

/* Variables and functions */
 scalar_t__ CHIP_POLARIS10 ; 
 scalar_t__ CHIP_POLARIS11 ; 
 scalar_t__ CHIP_POLARIS12 ; 
 int MEM_LATENCY_HIGH ; 
 int MEM_LATENCY_LOW ; 
 int /*<<< orphan*/  PPSMC_MSG_DisableFFC ; 
 int /*<<< orphan*/  PPSMC_MSG_EnableFFC ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ixMC_IO_DEBUG_UP_13 ; 
 int /*<<< orphan*/  mmMC_SEQ_IO_DEBUG_DATA ; 
 int /*<<< orphan*/  mmMC_SEQ_IO_DEBUG_INDEX ; 
 int /*<<< orphan*/  FUNC2 (struct pp_hwmgr*) ; 
 int /*<<< orphan*/  FUNC3 (struct pp_hwmgr*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct pp_hwmgr *hwmgr)
{
	struct smu7_hwmgr *data = (struct smu7_hwmgr *)(hwmgr->backend);

	uint32_t vbios_version;
	uint32_t tmp;

	/* Read MC indirect register offset 0x9F bits [3:0] to see
	 * if VBIOS has already loaded a full version of MC ucode
	 * or not.
	 */

	FUNC2(hwmgr);
	vbios_version = hwmgr->microcode_version_info.MC & 0xf;

	data->need_long_memory_training = false;

	FUNC1(hwmgr->device, mmMC_SEQ_IO_DEBUG_INDEX,
							ixMC_IO_DEBUG_UP_13);
	tmp = FUNC0(hwmgr->device, mmMC_SEQ_IO_DEBUG_DATA);

	if (tmp & (1 << 23)) {
		data->mem_latency_high = MEM_LATENCY_HIGH;
		data->mem_latency_low = MEM_LATENCY_LOW;
		if ((hwmgr->chip_id == CHIP_POLARIS10) ||
		    (hwmgr->chip_id == CHIP_POLARIS11) ||
		    (hwmgr->chip_id == CHIP_POLARIS12))
			FUNC3(hwmgr, PPSMC_MSG_EnableFFC);
	} else {
		data->mem_latency_high = 330;
		data->mem_latency_low = 330;
		if ((hwmgr->chip_id == CHIP_POLARIS10) ||
		    (hwmgr->chip_id == CHIP_POLARIS11) ||
		    (hwmgr->chip_id == CHIP_POLARIS12))
			FUNC3(hwmgr, PPSMC_MSG_DisableFFC);
	}

	return 0;
}