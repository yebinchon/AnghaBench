
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int vic; scalar_t__ sink_is_hdmi; int colorimetry; int enc_out_format; } ;
struct rk3066_hdmi {int tmdsclk; TYPE_1__ hdmi_data; } ;
struct drm_display_mode {int clock; } ;


 int HDMI_AUDIO_DISABLE ;
 int HDMI_AV_CTRL1 ;
 int HDMI_COLORIMETRY_ITU_601 ;
 int HDMI_COLORIMETRY_ITU_709 ;
 int HDMI_COLORSPACE_RGB ;
 int HDMI_DEEP_COLOR_MODE ;
 int HDMI_HDCP_CTRL ;
 scalar_t__ HDMI_SYS_POWER_MODE_B ;
 scalar_t__ HDMI_SYS_POWER_MODE_E ;
 int HDMI_VIDEO_AUDIO_DISABLE_MASK ;
 int HDMI_VIDEO_CTRL1 ;
 int HDMI_VIDEO_CTRL2 ;
 int HDMI_VIDEO_DE_MASK ;
 int HDMI_VIDEO_DISABLE ;
 int HDMI_VIDEO_EXTERNAL_DE ;
 int HDMI_VIDEO_INPUT_COLOR_RGB ;
 int HDMI_VIDEO_INPUT_DATA_DEPTH_8BIT ;
 int HDMI_VIDEO_MODE_HDMI ;
 int HDMI_VIDEO_MODE_MASK ;
 int HDMI_VIDEO_OUTPUT_RGB444 ;
 int drm_match_cea_mode (struct drm_display_mode*) ;
 int hdmi_modb (struct rk3066_hdmi*,int ,int ,int) ;
 int hdmi_writeb (struct rk3066_hdmi*,int ,int) ;
 int rk3066_hdmi_config_avi (struct rk3066_hdmi*,struct drm_display_mode*) ;
 int rk3066_hdmi_config_phy (struct rk3066_hdmi*) ;
 int rk3066_hdmi_config_video_timing (struct rk3066_hdmi*,struct drm_display_mode*) ;
 scalar_t__ rk3066_hdmi_get_power_mode (struct rk3066_hdmi*) ;
 int rk3066_hdmi_i2c_init (struct rk3066_hdmi*) ;
 int rk3066_hdmi_set_power_mode (struct rk3066_hdmi*,scalar_t__) ;

__attribute__((used)) static int rk3066_hdmi_setup(struct rk3066_hdmi *hdmi,
        struct drm_display_mode *mode)
{
 hdmi->hdmi_data.vic = drm_match_cea_mode(mode);
 hdmi->hdmi_data.enc_out_format = HDMI_COLORSPACE_RGB;

 if (hdmi->hdmi_data.vic == 6 || hdmi->hdmi_data.vic == 7 ||
     hdmi->hdmi_data.vic == 21 || hdmi->hdmi_data.vic == 22 ||
     hdmi->hdmi_data.vic == 2 || hdmi->hdmi_data.vic == 3 ||
     hdmi->hdmi_data.vic == 17 || hdmi->hdmi_data.vic == 18)
  hdmi->hdmi_data.colorimetry = HDMI_COLORIMETRY_ITU_601;
 else
  hdmi->hdmi_data.colorimetry = HDMI_COLORIMETRY_ITU_709;

 hdmi->tmdsclk = mode->clock * 1000;


 hdmi_modb(hdmi, HDMI_VIDEO_CTRL2, HDMI_VIDEO_AUDIO_DISABLE_MASK,
    HDMI_AUDIO_DISABLE | HDMI_VIDEO_DISABLE);


 if (rk3066_hdmi_get_power_mode(hdmi) != HDMI_SYS_POWER_MODE_B)
  rk3066_hdmi_set_power_mode(hdmi, HDMI_SYS_POWER_MODE_B);


 hdmi_modb(hdmi, HDMI_AV_CTRL1,
    HDMI_VIDEO_DE_MASK, HDMI_VIDEO_EXTERNAL_DE);
 hdmi_writeb(hdmi, HDMI_VIDEO_CTRL1,
      HDMI_VIDEO_OUTPUT_RGB444 |
      HDMI_VIDEO_INPUT_DATA_DEPTH_8BIT |
      HDMI_VIDEO_INPUT_COLOR_RGB);
 hdmi_writeb(hdmi, HDMI_DEEP_COLOR_MODE, 0x20);

 rk3066_hdmi_config_video_timing(hdmi, mode);

 if (hdmi->hdmi_data.sink_is_hdmi) {
  hdmi_modb(hdmi, HDMI_HDCP_CTRL, HDMI_VIDEO_MODE_MASK,
     HDMI_VIDEO_MODE_HDMI);
  rk3066_hdmi_config_avi(hdmi, mode);
 } else {
  hdmi_modb(hdmi, HDMI_HDCP_CTRL, HDMI_VIDEO_MODE_MASK, 0);
 }

 rk3066_hdmi_config_phy(hdmi);

 rk3066_hdmi_set_power_mode(hdmi, HDMI_SYS_POWER_MODE_E);







 rk3066_hdmi_i2c_init(hdmi);


 hdmi_modb(hdmi, HDMI_VIDEO_CTRL2,
    HDMI_VIDEO_AUDIO_DISABLE_MASK, HDMI_AUDIO_DISABLE);
 return 0;
}
