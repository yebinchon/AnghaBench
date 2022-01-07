
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int enabled; } ;
struct sti_hdmi {TYPE_1__ audio; } ;
struct device {int dummy; } ;


 int DRM_DEBUG_DRIVER (char*) ;
 int HDMI_AUDIO_CFG ;
 int HDMI_AUD_CFG_DTS_INVALID ;
 int HDMI_AUD_CFG_ONE_BIT_INVALID ;
 int HDMI_AUD_CFG_SPDIF_DIV_2 ;
 struct sti_hdmi* dev_get_drvdata (struct device*) ;
 int hdmi_audio_infoframe_config (struct sti_hdmi*) ;
 int hdmi_write (struct sti_hdmi*,int,int ) ;

__attribute__((used)) static void hdmi_audio_shutdown(struct device *dev, void *data)
{
 struct sti_hdmi *hdmi = dev_get_drvdata(dev);
 int audio_cfg;

 DRM_DEBUG_DRIVER("\n");


 audio_cfg = HDMI_AUD_CFG_SPDIF_DIV_2 | HDMI_AUD_CFG_DTS_INVALID |
      HDMI_AUD_CFG_ONE_BIT_INVALID;
 hdmi_write(hdmi, audio_cfg, HDMI_AUDIO_CFG);

 hdmi->audio.enabled = 0;
 hdmi_audio_infoframe_config(hdmi);
}
