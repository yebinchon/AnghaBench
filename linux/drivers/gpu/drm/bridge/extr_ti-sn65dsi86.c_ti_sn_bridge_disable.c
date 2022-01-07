
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ti_sn_bridge {int panel; int regmap; } ;
struct drm_bridge {int dummy; } ;


 int SN_ENH_FRAME_REG ;
 int SN_ML_TX_MODE_REG ;
 int SN_PLL_ENABLE_REG ;
 int VSTREAM_ENABLE ;
 struct ti_sn_bridge* bridge_to_ti_sn_bridge (struct drm_bridge*) ;
 int drm_panel_disable (int ) ;
 int drm_panel_unprepare (int ) ;
 int regmap_update_bits (int ,int ,int ,int ) ;
 int regmap_write (int ,int ,int ) ;

__attribute__((used)) static void ti_sn_bridge_disable(struct drm_bridge *bridge)
{
 struct ti_sn_bridge *pdata = bridge_to_ti_sn_bridge(bridge);

 drm_panel_disable(pdata->panel);


 regmap_update_bits(pdata->regmap, SN_ENH_FRAME_REG, VSTREAM_ENABLE, 0);

 regmap_write(pdata->regmap, SN_ML_TX_MODE_REG, 0);

 regmap_write(pdata->regmap, SN_PLL_ENABLE_REG, 0);

 drm_panel_unprepare(pdata->panel);
}
