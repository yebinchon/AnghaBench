
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ti_sn_bridge {int panel; int regmap; int dev; } ;
struct drm_bridge {int dummy; } ;


 int HPD_DISABLE ;
 int SN_HPD_DISABLE_REG ;
 struct ti_sn_bridge* bridge_to_ti_sn_bridge (struct drm_bridge*) ;
 int drm_panel_prepare (int ) ;
 int pm_runtime_get_sync (int ) ;
 int regmap_update_bits (int ,int ,int ,int ) ;
 int ti_sn_bridge_set_refclk_freq (struct ti_sn_bridge*) ;

__attribute__((used)) static void ti_sn_bridge_pre_enable(struct drm_bridge *bridge)
{
 struct ti_sn_bridge *pdata = bridge_to_ti_sn_bridge(bridge);

 pm_runtime_get_sync(pdata->dev);


 ti_sn_bridge_set_refclk_freq(pdata);
 regmap_update_bits(pdata->regmap, SN_HPD_DISABLE_REG, HPD_DISABLE,
      HPD_DISABLE);

 drm_panel_prepare(pdata->panel);
}
