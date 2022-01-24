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
struct dw_mipi_dsi_rockchip {int lane_mbps; int /*<<< orphan*/  phy_cfg_clk; int /*<<< orphan*/  feedback_div; int /*<<< orphan*/  input_div; int /*<<< orphan*/  dev; } ;
struct TYPE_2__ {int /*<<< orphan*/  hsfreqrange; int /*<<< orphan*/  lpfctrl; int /*<<< orphan*/  icpctrl; } ;

/* Variables and functions */
 int /*<<< orphan*/  AFE_BIAS_BANDGAP_ANALOG_PROGRAMMABILITY ; 
 int /*<<< orphan*/  BANDGAP_96_10 ; 
 int /*<<< orphan*/  BANDGAP_AND_BIAS_CONTROL ; 
 int BANDGAP_ON ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  BIASEXTR_127_7 ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int BIAS_BLOCK_ON ; 
 int FUNC2 (int) ; 
 int BYPASS_VCO_RANGE ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int CP_PROGRAM_EN ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,...) ; 
 int HIGH_PROGRAM_EN ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  HS_RX_CONTROL_OF_LANE_0 ; 
 int /*<<< orphan*/  HS_TX_CLOCK_LANE_EXIT_STATE_TIME_CONTROL ; 
 int /*<<< orphan*/  HS_TX_CLOCK_LANE_HS_ZERO_STATE_TIME_CONTROL ; 
 int /*<<< orphan*/  HS_TX_CLOCK_LANE_POST_TIME_CONTROL ; 
 int /*<<< orphan*/  HS_TX_CLOCK_LANE_PREPARE_STATE_TIME_CONTROL ; 
 int /*<<< orphan*/  HS_TX_CLOCK_LANE_REQUEST_STATE_TIME_CONTROL ; 
 int /*<<< orphan*/  HS_TX_CLOCK_LANE_TRAIL_STATE_TIME_CONTROL ; 
 int /*<<< orphan*/  HS_TX_DATA_LANE_EXIT_STATE_TIME_CONTROL ; 
 int /*<<< orphan*/  HS_TX_DATA_LANE_HS_ZERO_STATE_TIME_CONTROL ; 
 int /*<<< orphan*/  HS_TX_DATA_LANE_PREPARE_STATE_TIME_CONTROL ; 
 int /*<<< orphan*/  HS_TX_DATA_LANE_REQUEST_STATE_TIME_CONTROL ; 
 int /*<<< orphan*/  HS_TX_DATA_LANE_TRAIL_STATE_TIME_CONTROL ; 
 int FUNC6 (int /*<<< orphan*/ ) ; 
 int INTERNAL_REG_CURRENT ; 
 int LEVEL_SHIFTERS_ON ; 
 int FUNC7 (int /*<<< orphan*/ ) ; 
 int FUNC8 (int /*<<< orphan*/ ) ; 
 int LOW_PROGRAM_EN ; 
 int LPF_PROGRAM_EN ; 
 int FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PLL_BIAS_CUR_SEL_CAP_VCO_CONTROL ; 
 int /*<<< orphan*/  PLL_CP_CONTROL_PLL_LOCK_BYPASS ; 
 int /*<<< orphan*/  PLL_INPUT_AND_LOOP_DIVIDER_RATIOS_CONTROL ; 
 int /*<<< orphan*/  PLL_INPUT_DIVIDER_RATIO ; 
 int PLL_INPUT_DIV_EN ; 
 int /*<<< orphan*/  PLL_LOOP_DIVIDER_RATIO ; 
 int PLL_LOOP_DIV_EN ; 
 int /*<<< orphan*/  PLL_LPF_AND_CP_CONTROL ; 
 int POWER_CONTROL ; 
 int POWER_MANAGE ; 
 int REF_BIAS_CUR_SEL ; 
 int SETRD_MAX ; 
 int /*<<< orphan*/  TERMINATION_RESISTER_CONTROL ; 
 int TER_CAL_DONE ; 
 int TER_RESISTORS_ON ; 
 int TER_RESISTOR_HIGH ; 
 int TER_RESISTOR_LOW ; 
 int THS_PRE_PROGRAM_EN ; 
 int THS_ZERO_PROGRAM_EN ; 
 int TLP_PROGRAM_EN ; 
 int VCO_IN_CAP_CON_LOW ; 
 int FUNC10 (int) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int FUNC12 (int /*<<< orphan*/ ) ; 
 TYPE_1__* dppa_map ; 
 int /*<<< orphan*/  FUNC13 (struct dw_mipi_dsi_rockchip*,int /*<<< orphan*/ ,int) ; 
 int FUNC14 (int) ; 
 int FUNC15 (struct dw_mipi_dsi_rockchip*,int) ; 
 int FUNC16 (struct dw_mipi_dsi_rockchip*,int) ; 

__attribute__((used)) static int FUNC17(void *priv_data)
{
	struct dw_mipi_dsi_rockchip *dsi = priv_data;
	int ret, i, vco;

	/*
	 * Get vco from frequency(lane_mbps)
	 * vco	frequency table
	 * 000 - between   80 and  200 MHz
	 * 001 - between  200 and  300 MHz
	 * 010 - between  300 and  500 MHz
	 * 011 - between  500 and  700 MHz
	 * 100 - between  700 and  900 MHz
	 * 101 - between  900 and 1100 MHz
	 * 110 - between 1100 and 1300 MHz
	 * 111 - between 1300 and 1500 MHz
	 */
	vco = (dsi->lane_mbps < 200) ? 0 : (dsi->lane_mbps + 100) / 200;

	i = FUNC14(dsi->lane_mbps);
	if (i < 0) {
		FUNC4(dsi->dev,
			      "failed to get parameter for %dmbps clock\n",
			      dsi->lane_mbps);
		return i;
	}

	ret = FUNC12(dsi->phy_cfg_clk);
	if (ret) {
		FUNC4(dsi->dev, "Failed to enable phy_cfg_clk\n");
		return ret;
	}

	FUNC13(dsi, PLL_BIAS_CUR_SEL_CAP_VCO_CONTROL,
			      BYPASS_VCO_RANGE |
			      FUNC10(vco) |
			      VCO_IN_CAP_CON_LOW |
			      REF_BIAS_CUR_SEL);

	FUNC13(dsi, PLL_CP_CONTROL_PLL_LOCK_BYPASS,
			      FUNC3(dppa_map[i].icpctrl));
	FUNC13(dsi, PLL_LPF_AND_CP_CONTROL,
			      CP_PROGRAM_EN | LPF_PROGRAM_EN |
			      FUNC9(dppa_map[i].lpfctrl));

	FUNC13(dsi, HS_RX_CONTROL_OF_LANE_0,
			      FUNC5(dppa_map[i].hsfreqrange));

	FUNC13(dsi, PLL_INPUT_DIVIDER_RATIO,
			      FUNC6(dsi->input_div));
	FUNC13(dsi, PLL_LOOP_DIVIDER_RATIO,
			      FUNC8(dsi->feedback_div) |
			      LOW_PROGRAM_EN);
	/*
	 * We need set PLL_INPUT_AND_LOOP_DIVIDER_RATIOS_CONTROL immediately
	 * to make the configured LSB effective according to IP simulation
	 * and lab test results.
	 * Only in this way can we get correct mipi phy pll frequency.
	 */
	FUNC13(dsi, PLL_INPUT_AND_LOOP_DIVIDER_RATIOS_CONTROL,
			      PLL_LOOP_DIV_EN | PLL_INPUT_DIV_EN);
	FUNC13(dsi, PLL_LOOP_DIVIDER_RATIO,
			      FUNC7(dsi->feedback_div) |
			      HIGH_PROGRAM_EN);
	FUNC13(dsi, PLL_INPUT_AND_LOOP_DIVIDER_RATIOS_CONTROL,
			      PLL_LOOP_DIV_EN | PLL_INPUT_DIV_EN);

	FUNC13(dsi, AFE_BIAS_BANDGAP_ANALOG_PROGRAMMABILITY,
			      LOW_PROGRAM_EN | FUNC1(BIASEXTR_127_7));
	FUNC13(dsi, AFE_BIAS_BANDGAP_ANALOG_PROGRAMMABILITY,
			      HIGH_PROGRAM_EN | FUNC0(BANDGAP_96_10));

	FUNC13(dsi, BANDGAP_AND_BIAS_CONTROL,
			      POWER_CONTROL | INTERNAL_REG_CURRENT |
			      BIAS_BLOCK_ON | BANDGAP_ON);

	FUNC13(dsi, TERMINATION_RESISTER_CONTROL,
			      TER_RESISTOR_LOW | TER_CAL_DONE |
			      SETRD_MAX | TER_RESISTORS_ON);
	FUNC13(dsi, TERMINATION_RESISTER_CONTROL,
			      TER_RESISTOR_HIGH | LEVEL_SHIFTERS_ON |
			      SETRD_MAX | POWER_MANAGE |
			      TER_RESISTORS_ON);

	FUNC13(dsi, HS_TX_CLOCK_LANE_REQUEST_STATE_TIME_CONTROL,
			      TLP_PROGRAM_EN | FUNC15(dsi, 500));
	FUNC13(dsi, HS_TX_CLOCK_LANE_PREPARE_STATE_TIME_CONTROL,
			      THS_PRE_PROGRAM_EN | FUNC16(dsi, 40));
	FUNC13(dsi, HS_TX_CLOCK_LANE_HS_ZERO_STATE_TIME_CONTROL,
			      THS_ZERO_PROGRAM_EN | FUNC15(dsi, 300));
	FUNC13(dsi, HS_TX_CLOCK_LANE_TRAIL_STATE_TIME_CONTROL,
			      THS_PRE_PROGRAM_EN | FUNC16(dsi, 100));
	FUNC13(dsi, HS_TX_CLOCK_LANE_EXIT_STATE_TIME_CONTROL,
			      FUNC2(5) | FUNC15(dsi, 100));
	FUNC13(dsi, HS_TX_CLOCK_LANE_POST_TIME_CONTROL,
			      FUNC2(5) | (FUNC15(dsi, 60) + 7));

	FUNC13(dsi, HS_TX_DATA_LANE_REQUEST_STATE_TIME_CONTROL,
			      TLP_PROGRAM_EN | FUNC15(dsi, 500));
	FUNC13(dsi, HS_TX_DATA_LANE_PREPARE_STATE_TIME_CONTROL,
			      THS_PRE_PROGRAM_EN | (FUNC16(dsi, 50) + 20));
	FUNC13(dsi, HS_TX_DATA_LANE_HS_ZERO_STATE_TIME_CONTROL,
			      THS_ZERO_PROGRAM_EN | (FUNC15(dsi, 140) + 2));
	FUNC13(dsi, HS_TX_DATA_LANE_TRAIL_STATE_TIME_CONTROL,
			      THS_PRE_PROGRAM_EN | (FUNC16(dsi, 60) + 8));
	FUNC13(dsi, HS_TX_DATA_LANE_EXIT_STATE_TIME_CONTROL,
			      FUNC2(5) | FUNC15(dsi, 100));

	FUNC11(dsi->phy_cfg_clk);

	return ret;
}