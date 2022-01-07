
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {struct snd_pcm_substream* substream; } ;
struct vc4_hdmi {TYPE_1__* connector; TYPE_2__ audio; struct drm_encoder* encoder; } ;
struct vc4_dev {int dummy; } ;
struct snd_soc_dai {int dummy; } ;
struct snd_pcm_substream {int runtime; } ;
struct drm_encoder {int crtc; int dev; } ;
struct TYPE_3__ {int eld; } ;


 int EINVAL ;
 int ENODEV ;
 int HDMI_READ (int ) ;
 int VC4_HDMI_RAM_PACKET_CONFIG ;
 int VC4_HDMI_RAM_PACKET_ENABLE ;
 struct vc4_hdmi* dai_to_hdmi (struct snd_soc_dai*) ;
 int snd_pcm_hw_constraint_eld (int ,int ) ;
 struct vc4_dev* to_vc4_dev (int ) ;

__attribute__((used)) static int vc4_hdmi_audio_startup(struct snd_pcm_substream *substream,
      struct snd_soc_dai *dai)
{
 struct vc4_hdmi *hdmi = dai_to_hdmi(dai);
 struct drm_encoder *encoder = hdmi->encoder;
 struct vc4_dev *vc4 = to_vc4_dev(encoder->dev);
 int ret;

 if (hdmi->audio.substream && hdmi->audio.substream != substream)
  return -EINVAL;

 hdmi->audio.substream = substream;





 if (!encoder->crtc || !(HDMI_READ(VC4_HDMI_RAM_PACKET_CONFIG) &
    VC4_HDMI_RAM_PACKET_ENABLE))
  return -ENODEV;

 ret = snd_pcm_hw_constraint_eld(substream->runtime,
     hdmi->connector->eld);
 if (ret)
  return ret;

 return 0;
}
