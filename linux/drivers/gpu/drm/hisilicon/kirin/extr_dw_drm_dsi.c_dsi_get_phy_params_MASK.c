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
typedef  int u32 ;
struct mipi_phy_params {int clk_t_lpx; int clk_t_hs_prepare; int clk_t_hs_zero; int clk_t_hs_trial; int clk_t_wakeup; int data_t_wakeup; int data_t_lpx; int data_t_hs_prepare; int data_t_hs_zero; int data_t_hs_trial; int data_t_ta_go; int data_t_ta_get; int pll_enbwt; int clklp2hs_time; int clkhs2lp_time; int lp2hs_time; int hs2lp_time; int clk_to_data_delay; int data_to_clk_delay; int lane_byte_clk_kHz; int /*<<< orphan*/  clk_division; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MAX_TX_ESC_CLK ; 
 int PHY_REF_CLK_PERIOD_PS ; 
 int FUNC1 (int,int) ; 
 int FUNC2 (int,struct mipi_phy_params*) ; 
 int /*<<< orphan*/  FUNC3 (struct mipi_phy_params*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC4(u32 phy_req_kHz,
			       struct mipi_phy_params *phy)
{
	u32 ref_clk_ps = PHY_REF_CLK_PERIOD_PS;
	u32 phy_rate_kHz;
	u32 ui;

	FUNC3(phy, 0, sizeof(*phy));

	phy_rate_kHz = FUNC2(phy_req_kHz, phy);
	if (!phy_rate_kHz)
		return;

	ui = 1000000 / phy_rate_kHz;

	phy->clk_t_lpx = FUNC1(50, 8 * ui);
	phy->clk_t_hs_prepare = FUNC1(133, 16 * ui) - 1;

	phy->clk_t_hs_zero = FUNC1(262, 8 * ui);
	phy->clk_t_hs_trial = 2 * (FUNC1(60, 8 * ui) - 1);
	phy->clk_t_wakeup = FUNC1(1000000, (ref_clk_ps / 1000) - 1);
	if (phy->clk_t_wakeup > 0xff)
		phy->clk_t_wakeup = 0xff;
	phy->data_t_wakeup = phy->clk_t_wakeup;
	phy->data_t_lpx = phy->clk_t_lpx;
	phy->data_t_hs_prepare = FUNC1(125 + 10 * ui, 16 * ui) - 1;
	phy->data_t_hs_zero = FUNC1(105 + 6 * ui, 8 * ui);
	phy->data_t_hs_trial = 2 * (FUNC1(60 + 4 * ui, 8 * ui) - 1);
	phy->data_t_ta_go = 3;
	phy->data_t_ta_get = 4;

	phy->pll_enbwt = 1;
	phy->clklp2hs_time = FUNC1(407, 8 * ui) + 12;
	phy->clkhs2lp_time = FUNC1(105 + 12 * ui, 8 * ui);
	phy->lp2hs_time = FUNC1(240 + 12 * ui, 8 * ui) + 1;
	phy->hs2lp_time = phy->clkhs2lp_time;
	phy->clk_to_data_delay = 1 + phy->clklp2hs_time;
	phy->data_to_clk_delay = FUNC1(60 + 52 * ui, 8 * ui) +
				phy->clkhs2lp_time;

	phy->lane_byte_clk_kHz = phy_rate_kHz / 8;
	phy->clk_division =
		FUNC0(phy->lane_byte_clk_kHz, MAX_TX_ESC_CLK);
}