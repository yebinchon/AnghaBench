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
struct dce_clk_mgr {int dentist_vco_freq_khz; } ;
struct clk_mgr {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  DENTIST_DISPCLK_CNTL ; 
 int DENTIST_DIVIDER_RANGE_SCALE_FACTOR ; 
 int /*<<< orphan*/  DENTIST_DPREFCLK_WDIVIDER ; 
 int /*<<< orphan*/  DPREFCLK_CNTL ; 
 int /*<<< orphan*/  DPREFCLK_SRC_SEL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 
 struct dce_clk_mgr* FUNC2 (struct clk_mgr*) ; 
 int FUNC3 (struct dce_clk_mgr*,int) ; 
 int FUNC4 (int) ; 

__attribute__((used)) static int FUNC5(struct clk_mgr *clk_mgr)
{
	struct dce_clk_mgr *clk_mgr_dce = FUNC2(clk_mgr);
	int dprefclk_wdivider;
	int dprefclk_src_sel;
	int dp_ref_clk_khz = 600000;
	int target_div;

	/* ASSERT DP Reference Clock source is from DFS*/
	FUNC1(DPREFCLK_CNTL, DPREFCLK_SRC_SEL, &dprefclk_src_sel);
	FUNC0(dprefclk_src_sel == 0);

	/* Read the mmDENTIST_DISPCLK_CNTL to get the currently
	 * programmed DID DENTIST_DPREFCLK_WDIVIDER*/
	FUNC1(DENTIST_DISPCLK_CNTL, DENTIST_DPREFCLK_WDIVIDER, &dprefclk_wdivider);

	/* Convert DENTIST_DPREFCLK_WDIVIDERto actual divider*/
	target_div = FUNC4(dprefclk_wdivider);

	/* Calculate the current DFS clock, in kHz.*/
	dp_ref_clk_khz = (DENTIST_DIVIDER_RANGE_SCALE_FACTOR
		* clk_mgr_dce->dentist_vco_freq_khz) / target_div;

	return FUNC3(clk_mgr_dce, dp_ref_clk_khz);
}