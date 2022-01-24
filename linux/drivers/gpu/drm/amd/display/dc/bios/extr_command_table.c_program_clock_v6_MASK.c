#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ uint8_t ;
typedef  scalar_t__ uint32_t ;
struct TYPE_8__ {scalar_t__ SET_DISPCLK_DFS_BYPASS; scalar_t__ SET_EXTERNAL_REF_DIV_SRC; } ;
struct bp_pixel_clock_parameters {int target_pixel_clock_100hz; scalar_t__ dfs_bypass_display_clock; TYPE_2__ flags; int /*<<< orphan*/  pll_id; } ;
struct bios_parser {TYPE_1__* cmd_helper; } ;
typedef  int /*<<< orphan*/  params ;
typedef  enum bp_result { ____Placeholder_bp_result } bp_result ;
struct TYPE_9__ {int /*<<< orphan*/  ulDispEngClkFreq; int /*<<< orphan*/  ucMiscInfo; scalar_t__ ucPpll; } ;
struct TYPE_10__ {TYPE_3__ sPCLKInput; } ;
struct TYPE_7__ {int /*<<< orphan*/  (* clock_source_id_to_atom ) (int /*<<< orphan*/ ,scalar_t__*) ;} ;
typedef  TYPE_4__ SET_PIXEL_CLOCK_PS_ALLOCATION_V6 ;

/* Variables and functions */
 int BP_RESULT_BADINPUT ; 
 int BP_RESULT_FAILURE ; 
 int BP_RESULT_OK ; 
 int /*<<< orphan*/  FUNC0 () ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,TYPE_4__) ; 
 int /*<<< orphan*/  PIXEL_CLOCK_MISC_REF_DIV_SRC ; 
 int /*<<< orphan*/  PIXEL_CLOCK_V6_MISC_DPREFCLK_BYPASS ; 
 int /*<<< orphan*/  SetPixelClock ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_4__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,scalar_t__*) ; 

__attribute__((used)) static enum bp_result FUNC6(
	struct bios_parser *bp,
	struct bp_pixel_clock_parameters *bp_params)
{
	enum bp_result result = BP_RESULT_FAILURE;

	SET_PIXEL_CLOCK_PS_ALLOCATION_V6 params;
	uint32_t atom_pll_id;

	FUNC4(&params, 0, sizeof(params));

	if (!bp->cmd_helper->clock_source_id_to_atom(
			bp_params->pll_id, &atom_pll_id)) {
		FUNC0(); /*Invalid Input!!*/
		return BP_RESULT_BADINPUT;
	}

	/* We need to convert from KHz units into 10KHz units */
	params.sPCLKInput.ucPpll = (uint8_t)atom_pll_id;
	params.sPCLKInput.ulDispEngClkFreq =
			FUNC2(bp_params->target_pixel_clock_100hz / 100);

	if (bp_params->flags.SET_EXTERNAL_REF_DIV_SRC)
		params.sPCLKInput.ucMiscInfo |= PIXEL_CLOCK_MISC_REF_DIV_SRC;

	if (bp_params->flags.SET_DISPCLK_DFS_BYPASS)
		params.sPCLKInput.ucMiscInfo |= PIXEL_CLOCK_V6_MISC_DPREFCLK_BYPASS;

	if (FUNC1(SetPixelClock, params)) {
		/* True display clock is returned by VBIOS if DFS bypass
		 * is enabled. */
		bp_params->dfs_bypass_display_clock =
				(uint32_t)(FUNC3(params.sPCLKInput.ulDispEngClkFreq) * 10);
		result = BP_RESULT_OK;
	}

	return result;
}