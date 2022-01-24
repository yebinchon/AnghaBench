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
typedef  scalar_t__ uint8_t ;
typedef  int /*<<< orphan*/  u8 ;
typedef  int /*<<< orphan*/  u16 ;
struct pp_hwmgr {int /*<<< orphan*/  adev; } ;
typedef  int /*<<< orphan*/  pp_atomctrl_mc_reg_table ;
struct TYPE_3__ {int ucTableFormatRevision; } ;
struct TYPE_4__ {scalar_t__ ucNumOfVRAMModule; int /*<<< orphan*/  usMemClkPatchTblOffset; TYPE_1__ sHeader; } ;
typedef  TYPE_2__ ATOM_VRAM_INFO_HEADER_V2_1 ;
typedef  int /*<<< orphan*/  ATOM_INIT_REG_BLOCK ;

/* Variables and functions */
 int /*<<< orphan*/  DATA ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  VRAM_Info ; 
 int FUNC1 (scalar_t__,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

int FUNC6(
		struct pp_hwmgr *hwmgr,
		uint8_t module_index,
		pp_atomctrl_mc_reg_table *table)
{
	ATOM_VRAM_INFO_HEADER_V2_1 *vram_info;
	ATOM_INIT_REG_BLOCK *reg_block;
	int result = 0;
	u8 frev, crev;
	u16 size;

	vram_info = (ATOM_VRAM_INFO_HEADER_V2_1 *)
		FUNC5(hwmgr->adev,
				FUNC0(DATA, VRAM_Info), &size, &frev, &crev);

	if (module_index >= vram_info->ucNumOfVRAMModule) {
		FUNC4("Invalid VramInfo table.");
		result = -1;
	} else if (vram_info->sHeader.ucTableFormatRevision < 2) {
		FUNC4("Invalid VramInfo table.");
		result = -1;
	}

	if (0 == result) {
		reg_block = (ATOM_INIT_REG_BLOCK *)
			((uint8_t *)vram_info + FUNC3(vram_info->usMemClkPatchTblOffset));
		result = FUNC2(reg_block, table);
	}

	if (0 == result) {
		result = FUNC1(module_index,
					reg_block, table);
	}

	return result;
}