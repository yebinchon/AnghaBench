
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct sun4i_hdmi {int tmds_clk; scalar_t__ base; } ;
struct drm_encoder {int dummy; } ;


 int DRM_DEBUG_DRIVER (char*) ;
 int SUN4I_HDMI_VID_CTRL_ENABLE ;
 scalar_t__ SUN4I_HDMI_VID_CTRL_REG ;
 int clk_disable_unprepare (int ) ;
 struct sun4i_hdmi* drm_encoder_to_sun4i_hdmi (struct drm_encoder*) ;
 int readl (scalar_t__) ;
 int writel (int ,scalar_t__) ;

__attribute__((used)) static void sun4i_hdmi_disable(struct drm_encoder *encoder)
{
 struct sun4i_hdmi *hdmi = drm_encoder_to_sun4i_hdmi(encoder);
 u32 val;

 DRM_DEBUG_DRIVER("Disabling the HDMI Output\n");

 val = readl(hdmi->base + SUN4I_HDMI_VID_CTRL_REG);
 val &= ~SUN4I_HDMI_VID_CTRL_ENABLE;
 writel(val, hdmi->base + SUN4I_HDMI_VID_CTRL_REG);

 clk_disable_unprepare(hdmi->tmds_clk);
}
