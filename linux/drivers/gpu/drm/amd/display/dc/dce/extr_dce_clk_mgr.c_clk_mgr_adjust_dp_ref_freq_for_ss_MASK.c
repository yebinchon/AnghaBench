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
struct fixed31_32 {int dummy; } ;
struct dce_clk_mgr {scalar_t__ dprefclk_ss_divider; int /*<<< orphan*/  dprefclk_ss_percentage; scalar_t__ ss_on_dprefclk; } ;

/* Variables and functions */
 struct fixed31_32 FUNC0 (int /*<<< orphan*/ ,int) ; 
 int FUNC1 (struct fixed31_32) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,scalar_t__) ; 
 struct fixed31_32 FUNC3 (struct fixed31_32,int) ; 
 int /*<<< orphan*/  dc_fixpt_one ; 
 struct fixed31_32 FUNC4 (int /*<<< orphan*/ ,struct fixed31_32) ; 

__attribute__((used)) static int FUNC5(struct dce_clk_mgr *clk_mgr_dce, int dp_ref_clk_khz)
{
	if (clk_mgr_dce->ss_on_dprefclk && clk_mgr_dce->dprefclk_ss_divider != 0) {
		struct fixed31_32 ss_percentage = FUNC0(
				FUNC2(clk_mgr_dce->dprefclk_ss_percentage,
							clk_mgr_dce->dprefclk_ss_divider), 200);
		struct fixed31_32 adj_dp_ref_clk_khz;

		ss_percentage = FUNC4(dc_fixpt_one, ss_percentage);
		adj_dp_ref_clk_khz = FUNC3(ss_percentage, dp_ref_clk_khz);
		dp_ref_clk_khz = FUNC1(adj_dp_ref_clk_khz);
	}
	return dp_ref_clk_khz;
}