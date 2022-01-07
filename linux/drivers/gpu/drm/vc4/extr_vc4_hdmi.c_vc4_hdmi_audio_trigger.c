
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int channels; } ;
struct vc4_hdmi {TYPE_1__ audio; struct drm_encoder* encoder; } ;
struct vc4_dev {int dummy; } ;
struct snd_soc_dai {int dummy; } ;
struct snd_pcm_substream {int dummy; } ;
struct drm_encoder {struct drm_device* dev; } ;
struct drm_device {int dummy; } ;


 int HDMI_READ (int ) ;
 int HDMI_WRITE (int ,int) ;
 int HD_WRITE (int ,int) ;


 int VC4_HDMI_TX_PHY_CTL0 ;
 int VC4_HDMI_TX_PHY_RNG_PWRDN ;
 int VC4_HD_MAI_CTL ;
 int VC4_HD_MAI_CTL_CHNUM ;
 int VC4_HD_MAI_CTL_DLATE ;
 int VC4_HD_MAI_CTL_ENABLE ;
 int VC4_HD_MAI_CTL_ERRORE ;
 int VC4_HD_MAI_CTL_ERRORF ;
 int VC4_SET_FIELD (int ,int ) ;
 struct vc4_hdmi* dai_to_hdmi (struct snd_soc_dai*) ;
 struct vc4_dev* to_vc4_dev (struct drm_device*) ;
 int vc4_hdmi_set_audio_infoframe (struct drm_encoder*) ;

__attribute__((used)) static int vc4_hdmi_audio_trigger(struct snd_pcm_substream *substream, int cmd,
      struct snd_soc_dai *dai)
{
 struct vc4_hdmi *hdmi = dai_to_hdmi(dai);
 struct drm_encoder *encoder = hdmi->encoder;
 struct drm_device *drm = encoder->dev;
 struct vc4_dev *vc4 = to_vc4_dev(drm);

 switch (cmd) {
 case 129:
  vc4_hdmi_set_audio_infoframe(encoder);
  HDMI_WRITE(VC4_HDMI_TX_PHY_CTL0,
      HDMI_READ(VC4_HDMI_TX_PHY_CTL0) &
      ~VC4_HDMI_TX_PHY_RNG_PWRDN);
  HD_WRITE(VC4_HD_MAI_CTL,
    VC4_SET_FIELD(hdmi->audio.channels,
           VC4_HD_MAI_CTL_CHNUM) |
    VC4_HD_MAI_CTL_ENABLE);
  break;
 case 128:
  HD_WRITE(VC4_HD_MAI_CTL,
    VC4_HD_MAI_CTL_DLATE |
    VC4_HD_MAI_CTL_ERRORE |
    VC4_HD_MAI_CTL_ERRORF);
  HDMI_WRITE(VC4_HDMI_TX_PHY_CTL0,
      HDMI_READ(VC4_HDMI_TX_PHY_CTL0) |
      VC4_HDMI_TX_PHY_RNG_PWRDN);
  break;
 default:
  break;
 }

 return 0;
}
