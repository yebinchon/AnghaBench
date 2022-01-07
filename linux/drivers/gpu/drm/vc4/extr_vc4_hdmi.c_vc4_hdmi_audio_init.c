
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_7__ ;
typedef struct TYPE_15__ TYPE_6__ ;
typedef struct TYPE_14__ TYPE_5__ ;
typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_15__ {void* name; } ;
struct TYPE_14__ {void* name; int dai_name; } ;
struct TYPE_13__ {void* dai_name; } ;
struct TYPE_11__ {int maxburst; int addr_width; int addr; } ;
struct snd_soc_card {int num_links; char* name; struct device* dev; struct snd_soc_dai_link* dai_link; } ;
struct snd_soc_dai_link {int num_cpus; int num_codecs; int num_platforms; char* name; char* stream_name; TYPE_6__* platforms; TYPE_5__* codecs; TYPE_4__* cpus; } ;
struct TYPE_12__ {TYPE_6__ platform; TYPE_5__ codec; TYPE_4__ cpu; TYPE_2__ dma_data; struct snd_soc_card card; struct snd_soc_dai_link link; } ;
struct vc4_hdmi {TYPE_3__ audio; TYPE_1__* pdev; } ;
struct device {int of_node; } ;
typedef int __be32 ;
struct TYPE_16__ {int name; } ;
struct TYPE_10__ {struct device dev; } ;


 int DMA_SLAVE_BUSWIDTH_4_BYTES ;
 int VC4_HD_MAI_DATA ;
 int be32_to_cpup (int const*) ;
 int dev_err (struct device*,char*,int) ;
 void* dev_name (struct device*) ;
 int dev_warn (struct device*,char*) ;
 int devm_snd_dmaengine_pcm_register (struct device*,int *,int ) ;
 int devm_snd_soc_register_card (struct device*,struct snd_soc_card*) ;
 int devm_snd_soc_register_component (struct device*,int *,TYPE_7__*,int) ;
 int of_find_property (int ,char*,int *) ;
 int * of_get_address (int ,int,int *,int *) ;
 int pcm_conf ;
 int snd_soc_card_set_drvdata (struct snd_soc_card*,struct vc4_hdmi*) ;
 TYPE_7__ vc4_hdmi_audio_codec_dai_drv ;
 int vc4_hdmi_audio_component_drv ;
 int vc4_hdmi_audio_cpu_dai_comp ;
 TYPE_7__ vc4_hdmi_audio_cpu_dai_drv ;

__attribute__((used)) static int vc4_hdmi_audio_init(struct vc4_hdmi *hdmi)
{
 struct snd_soc_dai_link *dai_link = &hdmi->audio.link;
 struct snd_soc_card *card = &hdmi->audio.card;
 struct device *dev = &hdmi->pdev->dev;
 const __be32 *addr;
 int ret;

 if (!of_find_property(dev->of_node, "dmas", ((void*)0))) {
  dev_warn(dev,
    "'dmas' DT property is missing, no HDMI audio\n");
  return 0;
 }
 addr = of_get_address(dev->of_node, 1, ((void*)0), ((void*)0));
 hdmi->audio.dma_data.addr = be32_to_cpup(addr) + VC4_HD_MAI_DATA;
 hdmi->audio.dma_data.addr_width = DMA_SLAVE_BUSWIDTH_4_BYTES;
 hdmi->audio.dma_data.maxburst = 2;

 ret = devm_snd_dmaengine_pcm_register(dev, &pcm_conf, 0);
 if (ret) {
  dev_err(dev, "Could not register PCM component: %d\n", ret);
  return ret;
 }

 ret = devm_snd_soc_register_component(dev, &vc4_hdmi_audio_cpu_dai_comp,
           &vc4_hdmi_audio_cpu_dai_drv, 1);
 if (ret) {
  dev_err(dev, "Could not register CPU DAI: %d\n", ret);
  return ret;
 }


 ret = devm_snd_soc_register_component(dev, &vc4_hdmi_audio_component_drv,
         &vc4_hdmi_audio_codec_dai_drv, 1);
 if (ret) {
  dev_err(dev, "Could not register component: %d\n", ret);
  return ret;
 }

 dai_link->cpus = &hdmi->audio.cpu;
 dai_link->codecs = &hdmi->audio.codec;
 dai_link->platforms = &hdmi->audio.platform;

 dai_link->num_cpus = 1;
 dai_link->num_codecs = 1;
 dai_link->num_platforms = 1;

 dai_link->name = "MAI";
 dai_link->stream_name = "MAI PCM";
 dai_link->codecs->dai_name = vc4_hdmi_audio_codec_dai_drv.name;
 dai_link->cpus->dai_name = dev_name(dev);
 dai_link->codecs->name = dev_name(dev);
 dai_link->platforms->name = dev_name(dev);

 card->dai_link = dai_link;
 card->num_links = 1;
 card->name = "vc4-hdmi";
 card->dev = dev;
 snd_soc_card_set_drvdata(card, hdmi);
 ret = devm_snd_soc_register_card(dev, card);
 if (ret)
  dev_err(dev, "Could not register sound card: %d\n", ret);

 return ret;

}
