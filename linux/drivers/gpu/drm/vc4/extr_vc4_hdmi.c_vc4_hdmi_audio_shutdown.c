
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {struct snd_pcm_substream* substream; } ;
struct vc4_hdmi {TYPE_1__ audio; } ;
struct snd_soc_dai {int dummy; } ;
struct snd_pcm_substream {int dummy; } ;


 struct vc4_hdmi* dai_to_hdmi (struct snd_soc_dai*) ;
 int vc4_hdmi_audio_reset (struct vc4_hdmi*) ;

__attribute__((used)) static void vc4_hdmi_audio_shutdown(struct snd_pcm_substream *substream,
        struct snd_soc_dai *dai)
{
 struct vc4_hdmi *hdmi = dai_to_hdmi(dai);

 if (substream != hdmi->audio.substream)
  return;

 vc4_hdmi_audio_reset(hdmi);

 hdmi->audio.substream = ((void*)0);
}
