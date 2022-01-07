
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mtk_hdmi {int phy; int dev; } ;
struct drm_display_mode {int clock; } ;


 int dev_err (int ,char*,int) ;
 int mtk_hdmi_aud_output_config (struct mtk_hdmi*,struct drm_display_mode*) ;
 int mtk_hdmi_hw_aud_mute (struct mtk_hdmi*) ;
 int mtk_hdmi_hw_aud_unmute (struct mtk_hdmi*) ;
 int mtk_hdmi_hw_send_av_mute (struct mtk_hdmi*) ;
 int mtk_hdmi_hw_send_av_unmute (struct mtk_hdmi*) ;
 int mtk_hdmi_hw_vid_black (struct mtk_hdmi*,int) ;
 int mtk_hdmi_video_change_vpll (struct mtk_hdmi*,int) ;
 int mtk_hdmi_video_set_display_mode (struct mtk_hdmi*,struct drm_display_mode*) ;
 int phy_power_off (int ) ;
 int phy_power_on (int ) ;

__attribute__((used)) static int mtk_hdmi_output_set_display_mode(struct mtk_hdmi *hdmi,
         struct drm_display_mode *mode)
{
 int ret;

 mtk_hdmi_hw_vid_black(hdmi, 1);
 mtk_hdmi_hw_aud_mute(hdmi);
 mtk_hdmi_hw_send_av_mute(hdmi);
 phy_power_off(hdmi->phy);

 ret = mtk_hdmi_video_change_vpll(hdmi,
      mode->clock * 1000);
 if (ret) {
  dev_err(hdmi->dev, "Failed to set vpll: %d\n", ret);
  return ret;
 }
 mtk_hdmi_video_set_display_mode(hdmi, mode);

 phy_power_on(hdmi->phy);
 mtk_hdmi_aud_output_config(hdmi, mode);

 mtk_hdmi_hw_vid_black(hdmi, 0);
 mtk_hdmi_hw_aud_unmute(hdmi);
 mtk_hdmi_hw_send_av_unmute(hdmi);

 return 0;
}
