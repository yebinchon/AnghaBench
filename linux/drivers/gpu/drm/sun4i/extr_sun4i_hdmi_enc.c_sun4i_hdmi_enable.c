
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct sun4i_hdmi {scalar_t__ base; scalar_t__ hdmi_monitor; int tmds_clk; } ;
struct drm_encoder {TYPE_2__* crtc; } ;
struct drm_display_mode {int dummy; } ;
struct TYPE_4__ {TYPE_1__* state; } ;
struct TYPE_3__ {struct drm_display_mode adjusted_mode; } ;


 int DRM_DEBUG_DRIVER (char*) ;
 int SUN4I_HDMI_PKT_AVI ;
 scalar_t__ SUN4I_HDMI_PKT_CTRL_REG (int ) ;
 int SUN4I_HDMI_PKT_CTRL_TYPE (int,int ) ;
 int SUN4I_HDMI_PKT_END ;
 int SUN4I_HDMI_VID_CTRL_ENABLE ;
 int SUN4I_HDMI_VID_CTRL_HDMI_MODE ;
 scalar_t__ SUN4I_HDMI_VID_CTRL_REG ;
 int clk_prepare_enable (int ) ;
 struct sun4i_hdmi* drm_encoder_to_sun4i_hdmi (struct drm_encoder*) ;
 int sun4i_hdmi_setup_avi_infoframes (struct sun4i_hdmi*,struct drm_display_mode*) ;
 int writel (int ,scalar_t__) ;

__attribute__((used)) static void sun4i_hdmi_enable(struct drm_encoder *encoder)
{
 struct drm_display_mode *mode = &encoder->crtc->state->adjusted_mode;
 struct sun4i_hdmi *hdmi = drm_encoder_to_sun4i_hdmi(encoder);
 u32 val = 0;

 DRM_DEBUG_DRIVER("Enabling the HDMI Output\n");

 clk_prepare_enable(hdmi->tmds_clk);

 sun4i_hdmi_setup_avi_infoframes(hdmi, mode);
 val |= SUN4I_HDMI_PKT_CTRL_TYPE(0, SUN4I_HDMI_PKT_AVI);
 val |= SUN4I_HDMI_PKT_CTRL_TYPE(1, SUN4I_HDMI_PKT_END);
 writel(val, hdmi->base + SUN4I_HDMI_PKT_CTRL_REG(0));

 val = SUN4I_HDMI_VID_CTRL_ENABLE;
 if (hdmi->hdmi_monitor)
  val |= SUN4I_HDMI_VID_CTRL_HDMI_MODE;

 writel(val, hdmi->base + SUN4I_HDMI_VID_CTRL_REG);
}
