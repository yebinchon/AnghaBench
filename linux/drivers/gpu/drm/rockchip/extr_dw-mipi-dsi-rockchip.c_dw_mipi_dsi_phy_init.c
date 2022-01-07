
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct dw_mipi_dsi_rockchip {int lane_mbps; int phy_cfg_clk; int feedback_div; int input_div; int dev; } ;
struct TYPE_2__ {int hsfreqrange; int lpfctrl; int icpctrl; } ;


 int AFE_BIAS_BANDGAP_ANALOG_PROGRAMMABILITY ;
 int BANDGAP_96_10 ;
 int BANDGAP_AND_BIAS_CONTROL ;
 int BANDGAP_ON ;
 int BANDGAP_SEL (int ) ;
 int BIASEXTR_127_7 ;
 int BIASEXTR_SEL (int ) ;
 int BIAS_BLOCK_ON ;
 int BIT (int) ;
 int BYPASS_VCO_RANGE ;
 int CP_CURRENT_SEL (int ) ;
 int CP_PROGRAM_EN ;
 int DRM_DEV_ERROR (int ,char*,...) ;
 int HIGH_PROGRAM_EN ;
 int HSFREQRANGE_SEL (int ) ;
 int HS_RX_CONTROL_OF_LANE_0 ;
 int HS_TX_CLOCK_LANE_EXIT_STATE_TIME_CONTROL ;
 int HS_TX_CLOCK_LANE_HS_ZERO_STATE_TIME_CONTROL ;
 int HS_TX_CLOCK_LANE_POST_TIME_CONTROL ;
 int HS_TX_CLOCK_LANE_PREPARE_STATE_TIME_CONTROL ;
 int HS_TX_CLOCK_LANE_REQUEST_STATE_TIME_CONTROL ;
 int HS_TX_CLOCK_LANE_TRAIL_STATE_TIME_CONTROL ;
 int HS_TX_DATA_LANE_EXIT_STATE_TIME_CONTROL ;
 int HS_TX_DATA_LANE_HS_ZERO_STATE_TIME_CONTROL ;
 int HS_TX_DATA_LANE_PREPARE_STATE_TIME_CONTROL ;
 int HS_TX_DATA_LANE_REQUEST_STATE_TIME_CONTROL ;
 int HS_TX_DATA_LANE_TRAIL_STATE_TIME_CONTROL ;
 int INPUT_DIVIDER (int ) ;
 int INTERNAL_REG_CURRENT ;
 int LEVEL_SHIFTERS_ON ;
 int LOOP_DIV_HIGH_SEL (int ) ;
 int LOOP_DIV_LOW_SEL (int ) ;
 int LOW_PROGRAM_EN ;
 int LPF_PROGRAM_EN ;
 int LPF_RESISTORS_SEL (int ) ;
 int PLL_BIAS_CUR_SEL_CAP_VCO_CONTROL ;
 int PLL_CP_CONTROL_PLL_LOCK_BYPASS ;
 int PLL_INPUT_AND_LOOP_DIVIDER_RATIOS_CONTROL ;
 int PLL_INPUT_DIVIDER_RATIO ;
 int PLL_INPUT_DIV_EN ;
 int PLL_LOOP_DIVIDER_RATIO ;
 int PLL_LOOP_DIV_EN ;
 int PLL_LPF_AND_CP_CONTROL ;
 int POWER_CONTROL ;
 int POWER_MANAGE ;
 int REF_BIAS_CUR_SEL ;
 int SETRD_MAX ;
 int TERMINATION_RESISTER_CONTROL ;
 int TER_CAL_DONE ;
 int TER_RESISTORS_ON ;
 int TER_RESISTOR_HIGH ;
 int TER_RESISTOR_LOW ;
 int THS_PRE_PROGRAM_EN ;
 int THS_ZERO_PROGRAM_EN ;
 int TLP_PROGRAM_EN ;
 int VCO_IN_CAP_CON_LOW ;
 int VCO_RANGE_CON_SEL (int) ;
 int clk_disable_unprepare (int ) ;
 int clk_prepare_enable (int ) ;
 TYPE_1__* dppa_map ;
 int dw_mipi_dsi_phy_write (struct dw_mipi_dsi_rockchip*,int ,int) ;
 int max_mbps_to_parameter (int) ;
 int ns2bc (struct dw_mipi_dsi_rockchip*,int) ;
 int ns2ui (struct dw_mipi_dsi_rockchip*,int) ;

__attribute__((used)) static int dw_mipi_dsi_phy_init(void *priv_data)
{
 struct dw_mipi_dsi_rockchip *dsi = priv_data;
 int ret, i, vco;
 vco = (dsi->lane_mbps < 200) ? 0 : (dsi->lane_mbps + 100) / 200;

 i = max_mbps_to_parameter(dsi->lane_mbps);
 if (i < 0) {
  DRM_DEV_ERROR(dsi->dev,
         "failed to get parameter for %dmbps clock\n",
         dsi->lane_mbps);
  return i;
 }

 ret = clk_prepare_enable(dsi->phy_cfg_clk);
 if (ret) {
  DRM_DEV_ERROR(dsi->dev, "Failed to enable phy_cfg_clk\n");
  return ret;
 }

 dw_mipi_dsi_phy_write(dsi, PLL_BIAS_CUR_SEL_CAP_VCO_CONTROL,
         BYPASS_VCO_RANGE |
         VCO_RANGE_CON_SEL(vco) |
         VCO_IN_CAP_CON_LOW |
         REF_BIAS_CUR_SEL);

 dw_mipi_dsi_phy_write(dsi, PLL_CP_CONTROL_PLL_LOCK_BYPASS,
         CP_CURRENT_SEL(dppa_map[i].icpctrl));
 dw_mipi_dsi_phy_write(dsi, PLL_LPF_AND_CP_CONTROL,
         CP_PROGRAM_EN | LPF_PROGRAM_EN |
         LPF_RESISTORS_SEL(dppa_map[i].lpfctrl));

 dw_mipi_dsi_phy_write(dsi, HS_RX_CONTROL_OF_LANE_0,
         HSFREQRANGE_SEL(dppa_map[i].hsfreqrange));

 dw_mipi_dsi_phy_write(dsi, PLL_INPUT_DIVIDER_RATIO,
         INPUT_DIVIDER(dsi->input_div));
 dw_mipi_dsi_phy_write(dsi, PLL_LOOP_DIVIDER_RATIO,
         LOOP_DIV_LOW_SEL(dsi->feedback_div) |
         LOW_PROGRAM_EN);






 dw_mipi_dsi_phy_write(dsi, PLL_INPUT_AND_LOOP_DIVIDER_RATIOS_CONTROL,
         PLL_LOOP_DIV_EN | PLL_INPUT_DIV_EN);
 dw_mipi_dsi_phy_write(dsi, PLL_LOOP_DIVIDER_RATIO,
         LOOP_DIV_HIGH_SEL(dsi->feedback_div) |
         HIGH_PROGRAM_EN);
 dw_mipi_dsi_phy_write(dsi, PLL_INPUT_AND_LOOP_DIVIDER_RATIOS_CONTROL,
         PLL_LOOP_DIV_EN | PLL_INPUT_DIV_EN);

 dw_mipi_dsi_phy_write(dsi, AFE_BIAS_BANDGAP_ANALOG_PROGRAMMABILITY,
         LOW_PROGRAM_EN | BIASEXTR_SEL(BIASEXTR_127_7));
 dw_mipi_dsi_phy_write(dsi, AFE_BIAS_BANDGAP_ANALOG_PROGRAMMABILITY,
         HIGH_PROGRAM_EN | BANDGAP_SEL(BANDGAP_96_10));

 dw_mipi_dsi_phy_write(dsi, BANDGAP_AND_BIAS_CONTROL,
         POWER_CONTROL | INTERNAL_REG_CURRENT |
         BIAS_BLOCK_ON | BANDGAP_ON);

 dw_mipi_dsi_phy_write(dsi, TERMINATION_RESISTER_CONTROL,
         TER_RESISTOR_LOW | TER_CAL_DONE |
         SETRD_MAX | TER_RESISTORS_ON);
 dw_mipi_dsi_phy_write(dsi, TERMINATION_RESISTER_CONTROL,
         TER_RESISTOR_HIGH | LEVEL_SHIFTERS_ON |
         SETRD_MAX | POWER_MANAGE |
         TER_RESISTORS_ON);

 dw_mipi_dsi_phy_write(dsi, HS_TX_CLOCK_LANE_REQUEST_STATE_TIME_CONTROL,
         TLP_PROGRAM_EN | ns2bc(dsi, 500));
 dw_mipi_dsi_phy_write(dsi, HS_TX_CLOCK_LANE_PREPARE_STATE_TIME_CONTROL,
         THS_PRE_PROGRAM_EN | ns2ui(dsi, 40));
 dw_mipi_dsi_phy_write(dsi, HS_TX_CLOCK_LANE_HS_ZERO_STATE_TIME_CONTROL,
         THS_ZERO_PROGRAM_EN | ns2bc(dsi, 300));
 dw_mipi_dsi_phy_write(dsi, HS_TX_CLOCK_LANE_TRAIL_STATE_TIME_CONTROL,
         THS_PRE_PROGRAM_EN | ns2ui(dsi, 100));
 dw_mipi_dsi_phy_write(dsi, HS_TX_CLOCK_LANE_EXIT_STATE_TIME_CONTROL,
         BIT(5) | ns2bc(dsi, 100));
 dw_mipi_dsi_phy_write(dsi, HS_TX_CLOCK_LANE_POST_TIME_CONTROL,
         BIT(5) | (ns2bc(dsi, 60) + 7));

 dw_mipi_dsi_phy_write(dsi, HS_TX_DATA_LANE_REQUEST_STATE_TIME_CONTROL,
         TLP_PROGRAM_EN | ns2bc(dsi, 500));
 dw_mipi_dsi_phy_write(dsi, HS_TX_DATA_LANE_PREPARE_STATE_TIME_CONTROL,
         THS_PRE_PROGRAM_EN | (ns2ui(dsi, 50) + 20));
 dw_mipi_dsi_phy_write(dsi, HS_TX_DATA_LANE_HS_ZERO_STATE_TIME_CONTROL,
         THS_ZERO_PROGRAM_EN | (ns2bc(dsi, 140) + 2));
 dw_mipi_dsi_phy_write(dsi, HS_TX_DATA_LANE_TRAIL_STATE_TIME_CONTROL,
         THS_PRE_PROGRAM_EN | (ns2ui(dsi, 60) + 8));
 dw_mipi_dsi_phy_write(dsi, HS_TX_DATA_LANE_EXIT_STATE_TIME_CONTROL,
         BIT(5) | ns2bc(dsi, 100));

 clk_disable_unprepare(dsi->phy_cfg_clk);

 return ret;
}
