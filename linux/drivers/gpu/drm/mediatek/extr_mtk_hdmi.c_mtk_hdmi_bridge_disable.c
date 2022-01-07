
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mtk_hdmi {int enabled; int * clk; int phy; } ;
struct drm_bridge {int dummy; } ;


 size_t MTK_HDMI_CLK_HDMI_PIXEL ;
 size_t MTK_HDMI_CLK_HDMI_PLL ;
 int clk_disable_unprepare (int ) ;
 struct mtk_hdmi* hdmi_ctx_from_bridge (struct drm_bridge*) ;
 int phy_power_off (int ) ;

__attribute__((used)) static void mtk_hdmi_bridge_disable(struct drm_bridge *bridge)
{
 struct mtk_hdmi *hdmi = hdmi_ctx_from_bridge(bridge);

 if (!hdmi->enabled)
  return;

 phy_power_off(hdmi->phy);
 clk_disable_unprepare(hdmi->clk[MTK_HDMI_CLK_HDMI_PIXEL]);
 clk_disable_unprepare(hdmi->clk[MTK_HDMI_CLK_HDMI_PLL]);

 hdmi->enabled = 0;
}
