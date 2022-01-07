
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mtk_hdmi {int enabled; int mode; int phy; int * clk; } ;
struct drm_bridge {int dummy; } ;


 size_t MTK_HDMI_CLK_HDMI_PIXEL ;
 size_t MTK_HDMI_CLK_HDMI_PLL ;
 int clk_prepare_enable (int ) ;
 struct mtk_hdmi* hdmi_ctx_from_bridge (struct drm_bridge*) ;
 int mtk_hdmi_output_set_display_mode (struct mtk_hdmi*,int *) ;
 int mtk_hdmi_send_infoframe (struct mtk_hdmi*,int *) ;
 int phy_power_on (int ) ;

__attribute__((used)) static void mtk_hdmi_bridge_enable(struct drm_bridge *bridge)
{
 struct mtk_hdmi *hdmi = hdmi_ctx_from_bridge(bridge);

 mtk_hdmi_output_set_display_mode(hdmi, &hdmi->mode);
 clk_prepare_enable(hdmi->clk[MTK_HDMI_CLK_HDMI_PLL]);
 clk_prepare_enable(hdmi->clk[MTK_HDMI_CLK_HDMI_PIXEL]);
 phy_power_on(hdmi->phy);
 mtk_hdmi_send_infoframe(hdmi, &hdmi->mode);

 hdmi->enabled = 1;
}
