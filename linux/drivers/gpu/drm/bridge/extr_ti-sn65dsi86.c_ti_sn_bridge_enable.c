
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ti_sn_bridge {int panel; int regmap; int aux; TYPE_1__* dsi; } ;
struct drm_bridge {int dummy; } ;
struct TYPE_2__ {scalar_t__ lanes; } ;


 unsigned int CHA_DSI_LANES (scalar_t__) ;
 unsigned int CHA_DSI_LANES_MASK ;
 unsigned int DPPLL_SRC_DP_PLL_LOCK ;
 int DP_ALTERNATE_SCRAMBLER_RESET_ENABLE ;
 int DP_EDP_CONFIGURATION_SET ;
 unsigned int DP_NUM_LANES (scalar_t__) ;
 unsigned int DP_NUM_LANES_MASK ;
 int DRM_ERROR (char*,...) ;
 unsigned int ML_TX_MAIN_LINK_OFF ;
 unsigned int ML_TX_NORMAL_MODE ;
 int SN_DPPLL_SRC_REG ;
 int SN_DSI_LANES_REG ;
 int SN_ENH_FRAME_REG ;
 int SN_ML_TX_MODE_REG ;
 int SN_PLL_ENABLE_REG ;
 int SN_SSC_CONFIG_REG ;
 unsigned int VSTREAM_ENABLE ;
 struct ti_sn_bridge* bridge_to_ti_sn_bridge (struct drm_bridge*) ;
 int drm_dp_dpcd_writeb (int *,int ,int ) ;
 int drm_panel_enable (int ) ;
 int regmap_read_poll_timeout (int ,int ,unsigned int,int,int,int) ;
 int regmap_update_bits (int ,int ,unsigned int,unsigned int) ;
 int regmap_write (int ,int ,int) ;
 int ti_sn_bridge_set_dsi_dp_rate (struct ti_sn_bridge*) ;
 int ti_sn_bridge_set_video_timings (struct ti_sn_bridge*) ;

__attribute__((used)) static void ti_sn_bridge_enable(struct drm_bridge *bridge)
{
 struct ti_sn_bridge *pdata = bridge_to_ti_sn_bridge(bridge);
 unsigned int val;
 int ret;


 val = CHA_DSI_LANES(4 - pdata->dsi->lanes);
 regmap_update_bits(pdata->regmap, SN_DSI_LANES_REG,
      CHA_DSI_LANES_MASK, val);


 val = DP_NUM_LANES(pdata->dsi->lanes - 1);
 regmap_update_bits(pdata->regmap, SN_SSC_CONFIG_REG, DP_NUM_LANES_MASK,
      val);


 ti_sn_bridge_set_dsi_dp_rate(pdata);


 regmap_write(pdata->regmap, SN_PLL_ENABLE_REG, 1);

 ret = regmap_read_poll_timeout(pdata->regmap, SN_DPPLL_SRC_REG, val,
           val & DPPLL_SRC_DP_PLL_LOCK, 1000,
           50 * 1000);
 if (ret) {
  DRM_ERROR("DP_PLL_LOCK polling failed (%d)\n", ret);
  return;
 }







 drm_dp_dpcd_writeb(&pdata->aux, DP_EDP_CONFIGURATION_SET,
      DP_ALTERNATE_SCRAMBLER_RESET_ENABLE);


 regmap_write(pdata->regmap, SN_ML_TX_MODE_REG, 0x0A);
 ret = regmap_read_poll_timeout(pdata->regmap, SN_ML_TX_MODE_REG, val,
           val == ML_TX_MAIN_LINK_OFF ||
           val == ML_TX_NORMAL_MODE, 1000,
           500 * 1000);
 if (ret) {
  DRM_ERROR("Training complete polling failed (%d)\n", ret);
  return;
 } else if (val == ML_TX_MAIN_LINK_OFF) {
  DRM_ERROR("Link training failed, link is off\n");
  return;
 }


 ti_sn_bridge_set_video_timings(pdata);


 regmap_update_bits(pdata->regmap, SN_ENH_FRAME_REG, VSTREAM_ENABLE,
      VSTREAM_ENABLE);

 drm_panel_enable(pdata->panel);
}
