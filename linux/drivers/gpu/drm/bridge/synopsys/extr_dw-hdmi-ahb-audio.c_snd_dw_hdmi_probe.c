
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_pcm {char* name; struct snd_dw_hdmi* private_data; } ;
struct dw_hdmi_audio_data {int irq; scalar_t__ base; } ;
struct snd_dw_hdmi {unsigned int revision; struct snd_pcm* pcm; int lock; struct dw_hdmi_audio_data data; struct snd_card* card; } ;
struct snd_card {char* driver; char* shortname; struct snd_dw_hdmi* private_data; int longname; } ;
struct TYPE_2__ {struct device* parent; struct dw_hdmi_audio_data* platform_data; } ;
struct platform_device {TYPE_1__ dev; } ;
struct device {int dummy; } ;


 char* DRIVER_NAME ;
 int ENXIO ;
 scalar_t__ HDMI_IH_MUTE_AHBDMAAUD_STAT0 ;
 int HDMI_IH_MUTE_AHBDMAAUD_STAT0_ALL ;
 scalar_t__ HDMI_REVISION_ID ;
 int SNDRV_DEFAULT_IDX1 ;
 int SNDRV_DEFAULT_STR1 ;
 int SNDRV_DMA_TYPE_DEV ;
 int SNDRV_PCM_STREAM_PLAYBACK ;
 int THIS_MODULE ;
 int dev_err (struct device*,char*,unsigned int) ;
 int platform_set_drvdata (struct platform_device*,struct snd_dw_hdmi*) ;
 unsigned int readb_relaxed (scalar_t__) ;
 int snd_card_free (struct snd_card*) ;
 int snd_card_new (struct device*,int ,int ,int ,int,struct snd_card**) ;
 int snd_card_register (struct snd_card*) ;
 int snd_dw_hdmi_ops ;
 int snd_pcm_lib_preallocate_pages_for_all (struct snd_pcm*,int ,struct device*,int,int) ;
 int snd_pcm_new (struct snd_card*,char*,int ,int,int ,struct snd_pcm**) ;
 int snd_pcm_set_ops (struct snd_pcm*,int ,int *) ;
 int snprintf (int ,int,char*,char*,unsigned int,int) ;
 int spin_lock_init (int *) ;
 int strlcpy (char*,char*,int) ;
 int writeb_relaxed (int ,scalar_t__) ;

__attribute__((used)) static int snd_dw_hdmi_probe(struct platform_device *pdev)
{
 const struct dw_hdmi_audio_data *data = pdev->dev.platform_data;
 struct device *dev = pdev->dev.parent;
 struct snd_dw_hdmi *dw;
 struct snd_card *card;
 struct snd_pcm *pcm;
 unsigned revision;
 int ret;

 writeb_relaxed(HDMI_IH_MUTE_AHBDMAAUD_STAT0_ALL,
         data->base + HDMI_IH_MUTE_AHBDMAAUD_STAT0);
 revision = readb_relaxed(data->base + HDMI_REVISION_ID);
 if (revision != 0x0a && revision != 0x1a) {
  dev_err(dev, "dw-hdmi-audio: unknown revision 0x%02x\n",
   revision);
  return -ENXIO;
 }

 ret = snd_card_new(dev, SNDRV_DEFAULT_IDX1, SNDRV_DEFAULT_STR1,
         THIS_MODULE, sizeof(struct snd_dw_hdmi), &card);
 if (ret < 0)
  return ret;

 strlcpy(card->driver, DRIVER_NAME, sizeof(card->driver));
 strlcpy(card->shortname, "DW-HDMI", sizeof(card->shortname));
 snprintf(card->longname, sizeof(card->longname),
   "%s rev 0x%02x, irq %d", card->shortname, revision,
   data->irq);

 dw = card->private_data;
 dw->card = card;
 dw->data = *data;
 dw->revision = revision;

 spin_lock_init(&dw->lock);

 ret = snd_pcm_new(card, "DW HDMI", 0, 1, 0, &pcm);
 if (ret < 0)
  goto err;

 dw->pcm = pcm;
 pcm->private_data = dw;
 strlcpy(pcm->name, DRIVER_NAME, sizeof(pcm->name));
 snd_pcm_set_ops(pcm, SNDRV_PCM_STREAM_PLAYBACK, &snd_dw_hdmi_ops);





 snd_pcm_lib_preallocate_pages_for_all(pcm, SNDRV_DMA_TYPE_DEV,
   dev, 128 * 1024, 1024 * 1024);

 ret = snd_card_register(card);
 if (ret < 0)
  goto err;

 platform_set_drvdata(pdev, dw);

 return 0;

err:
 snd_card_free(card);
 return ret;
}
