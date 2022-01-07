
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ enabled; } ;
struct sti_hdmi {int enabled; TYPE_2__ audio; TYPE_1__* phy_ops; int clk_phy; int clk_tmds; int clk_pix; } ;
struct drm_bridge {struct sti_hdmi* driver_private; } ;
struct TYPE_3__ {int (* start ) (struct sti_hdmi*) ;} ;


 int DRM_DEBUG_DRIVER (char*) ;
 int DRM_ERROR (char*) ;
 int HDMI_INT_EN ;
 int HDMI_WORKING_INT ;
 scalar_t__ clk_prepare_enable (int ) ;
 int hdmi_active_area (struct sti_hdmi*) ;
 scalar_t__ hdmi_audio_configure (struct sti_hdmi*) ;
 int hdmi_audio_infoframe_config (struct sti_hdmi*) ;
 scalar_t__ hdmi_avi_infoframe_config (struct sti_hdmi*) ;
 int hdmi_config (struct sti_hdmi*) ;
 int hdmi_swreset (struct sti_hdmi*) ;
 scalar_t__ hdmi_vendor_infoframe_config (struct sti_hdmi*) ;
 int hdmi_write (struct sti_hdmi*,int ,int ) ;
 int stub1 (struct sti_hdmi*) ;

__attribute__((used)) static void sti_hdmi_pre_enable(struct drm_bridge *bridge)
{
 struct sti_hdmi *hdmi = bridge->driver_private;

 DRM_DEBUG_DRIVER("\n");

 if (hdmi->enabled)
  return;


 if (clk_prepare_enable(hdmi->clk_pix))
  DRM_ERROR("Failed to prepare/enable hdmi_pix clk\n");
 if (clk_prepare_enable(hdmi->clk_tmds))
  DRM_ERROR("Failed to prepare/enable hdmi_tmds clk\n");
 if (clk_prepare_enable(hdmi->clk_phy))
  DRM_ERROR("Failed to prepare/enable hdmi_rejec_pll clk\n");

 hdmi->enabled = 1;


 if (!hdmi->phy_ops->start(hdmi)) {
  DRM_ERROR("Unable to start hdmi phy\n");
  return;
 }


 hdmi_active_area(hdmi);


 hdmi_write(hdmi, HDMI_WORKING_INT, HDMI_INT_EN);


 hdmi_config(hdmi);


 if (hdmi_avi_infoframe_config(hdmi))
  DRM_ERROR("Unable to configure AVI infoframe\n");

 if (hdmi->audio.enabled) {
  if (hdmi_audio_configure(hdmi))
   DRM_ERROR("Unable to configure audio\n");
 } else {
  hdmi_audio_infoframe_config(hdmi);
 }


 if (hdmi_vendor_infoframe_config(hdmi))
  DRM_ERROR("Unable to configure VS infoframe\n");


 hdmi_swreset(hdmi);
}
