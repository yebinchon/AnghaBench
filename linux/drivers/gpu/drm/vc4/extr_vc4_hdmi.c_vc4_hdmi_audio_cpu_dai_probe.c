
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int dma_data; } ;
struct vc4_hdmi {TYPE_1__ audio; } ;
struct snd_soc_dai {int dummy; } ;


 struct vc4_hdmi* dai_to_hdmi (struct snd_soc_dai*) ;
 int snd_soc_dai_init_dma_data (struct snd_soc_dai*,int *,int *) ;

__attribute__((used)) static int vc4_hdmi_audio_cpu_dai_probe(struct snd_soc_dai *dai)
{
 struct vc4_hdmi *hdmi = dai_to_hdmi(dai);

 snd_soc_dai_init_dma_data(dai, &hdmi->audio.dma_data, ((void*)0));

 return 0;
}
