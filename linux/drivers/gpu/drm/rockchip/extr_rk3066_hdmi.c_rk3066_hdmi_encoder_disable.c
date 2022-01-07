
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rk3066_hdmi {int dev; } ;
struct drm_encoder {int dummy; } ;


 int DRM_DEV_DEBUG (int ,char*) ;
 int HDMI_AUDIO_CP_LOGIC_RESET ;
 int HDMI_AUDIO_CP_LOGIC_RESET_MASK ;
 int HDMI_SYS_POWER_MODE_A ;
 scalar_t__ HDMI_SYS_POWER_MODE_E ;
 int HDMI_VIDEO_AUDIO_DISABLE_MASK ;
 int HDMI_VIDEO_CTRL2 ;
 int hdmi_modb (struct rk3066_hdmi*,int ,int ,int ) ;
 int hdmi_writeb (struct rk3066_hdmi*,int ,int ) ;
 scalar_t__ rk3066_hdmi_get_power_mode (struct rk3066_hdmi*) ;
 int rk3066_hdmi_set_power_mode (struct rk3066_hdmi*,int ) ;
 struct rk3066_hdmi* to_rk3066_hdmi (struct drm_encoder*) ;
 int usleep_range (int,int) ;

__attribute__((used)) static void rk3066_hdmi_encoder_disable(struct drm_encoder *encoder)
{
 struct rk3066_hdmi *hdmi = to_rk3066_hdmi(encoder);

 DRM_DEV_DEBUG(hdmi->dev, "hdmi encoder disable\n");

 if (rk3066_hdmi_get_power_mode(hdmi) == HDMI_SYS_POWER_MODE_E) {
  hdmi_writeb(hdmi, HDMI_VIDEO_CTRL2,
       HDMI_VIDEO_AUDIO_DISABLE_MASK);
  hdmi_modb(hdmi, HDMI_VIDEO_CTRL2,
     HDMI_AUDIO_CP_LOGIC_RESET_MASK,
     HDMI_AUDIO_CP_LOGIC_RESET);
  usleep_range(500, 510);
 }
 rk3066_hdmi_set_power_mode(hdmi, HDMI_SYS_POWER_MODE_A);
}
