
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct sun8i_hdmi_phy {TYPE_1__* variant; int clk_phy; int regs; } ;
struct dw_hdmi {int dummy; } ;
struct drm_display_mode {int flags; int crtc_clock; } ;
struct TYPE_2__ {int (* phy_config ) (struct dw_hdmi*,struct sun8i_hdmi_phy*,int) ;scalar_t__ has_phy_clk; } ;


 int DRM_MODE_FLAG_NHSYNC ;
 int DRM_MODE_FLAG_NVSYNC ;
 int SUN8I_HDMI_PHY_DBG_CTRL_POL_MASK ;
 int SUN8I_HDMI_PHY_DBG_CTRL_POL_NHSYNC ;
 int SUN8I_HDMI_PHY_DBG_CTRL_POL_NVSYNC ;
 int SUN8I_HDMI_PHY_DBG_CTRL_REG ;
 int clk_set_rate (int ,int) ;
 int regmap_update_bits (int ,int ,int ,int ) ;
 int stub1 (struct dw_hdmi*,struct sun8i_hdmi_phy*,int) ;

__attribute__((used)) static int sun8i_hdmi_phy_config(struct dw_hdmi *hdmi, void *data,
     struct drm_display_mode *mode)
{
 struct sun8i_hdmi_phy *phy = (struct sun8i_hdmi_phy *)data;
 u32 val = 0;

 if (mode->flags & DRM_MODE_FLAG_NHSYNC)
  val |= SUN8I_HDMI_PHY_DBG_CTRL_POL_NHSYNC;

 if (mode->flags & DRM_MODE_FLAG_NVSYNC)
  val |= SUN8I_HDMI_PHY_DBG_CTRL_POL_NVSYNC;

 regmap_update_bits(phy->regs, SUN8I_HDMI_PHY_DBG_CTRL_REG,
      SUN8I_HDMI_PHY_DBG_CTRL_POL_MASK, val);

 if (phy->variant->has_phy_clk)
  clk_set_rate(phy->clk_phy, mode->crtc_clock * 1000);

 return phy->variant->phy_config(hdmi, phy, mode->crtc_clock * 1000);
}
