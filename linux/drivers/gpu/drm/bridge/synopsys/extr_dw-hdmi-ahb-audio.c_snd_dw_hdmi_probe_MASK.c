#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct snd_pcm {char* name; struct snd_dw_hdmi* private_data; } ;
struct dw_hdmi_audio_data {int irq; scalar_t__ base; } ;
struct snd_dw_hdmi {unsigned int revision; struct snd_pcm* pcm; int /*<<< orphan*/  lock; struct dw_hdmi_audio_data data; struct snd_card* card; } ;
struct snd_card {char* driver; char* shortname; struct snd_dw_hdmi* private_data; int /*<<< orphan*/  longname; } ;
struct TYPE_2__ {struct device* parent; struct dw_hdmi_audio_data* platform_data; } ;
struct platform_device {TYPE_1__ dev; } ;
struct device {int dummy; } ;

/* Variables and functions */
 char* DRIVER_NAME ; 
 int ENXIO ; 
 scalar_t__ HDMI_IH_MUTE_AHBDMAAUD_STAT0 ; 
 int /*<<< orphan*/  HDMI_IH_MUTE_AHBDMAAUD_STAT0_ALL ; 
 scalar_t__ HDMI_REVISION_ID ; 
 int /*<<< orphan*/  SNDRV_DEFAULT_IDX1 ; 
 int /*<<< orphan*/  SNDRV_DEFAULT_STR1 ; 
 int /*<<< orphan*/  SNDRV_DMA_TYPE_DEV ; 
 int /*<<< orphan*/  SNDRV_PCM_STREAM_PLAYBACK ; 
 int /*<<< orphan*/  THIS_MODULE ; 
 int /*<<< orphan*/  FUNC0 (struct device*,char*,unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (struct platform_device*,struct snd_dw_hdmi*) ; 
 unsigned int FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (struct snd_card*) ; 
 int FUNC4 (struct device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,struct snd_card**) ; 
 int FUNC5 (struct snd_card*) ; 
 int /*<<< orphan*/  snd_dw_hdmi_ops ; 
 int /*<<< orphan*/  FUNC6 (struct snd_pcm*,int /*<<< orphan*/ ,struct device*,int,int) ; 
 int FUNC7 (struct snd_card*,char*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,struct snd_pcm**) ; 
 int /*<<< orphan*/  FUNC8 (struct snd_pcm*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int,char*,char*,unsigned int,int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static int FUNC13(struct platform_device *pdev)
{
	const struct dw_hdmi_audio_data *data = pdev->dev.platform_data;
	struct device *dev = pdev->dev.parent;
	struct snd_dw_hdmi *dw;
	struct snd_card *card;
	struct snd_pcm *pcm;
	unsigned revision;
	int ret;

	FUNC12(HDMI_IH_MUTE_AHBDMAAUD_STAT0_ALL,
		       data->base + HDMI_IH_MUTE_AHBDMAAUD_STAT0);
	revision = FUNC2(data->base + HDMI_REVISION_ID);
	if (revision != 0x0a && revision != 0x1a) {
		FUNC0(dev, "dw-hdmi-audio: unknown revision 0x%02x\n",
			revision);
		return -ENXIO;
	}

	ret = FUNC4(dev, SNDRV_DEFAULT_IDX1, SNDRV_DEFAULT_STR1,
			      THIS_MODULE, sizeof(struct snd_dw_hdmi), &card);
	if (ret < 0)
		return ret;

	FUNC11(card->driver, DRIVER_NAME, sizeof(card->driver));
	FUNC11(card->shortname, "DW-HDMI", sizeof(card->shortname));
	FUNC9(card->longname, sizeof(card->longname),
		 "%s rev 0x%02x, irq %d", card->shortname, revision,
		 data->irq);

	dw = card->private_data;
	dw->card = card;
	dw->data = *data;
	dw->revision = revision;

	FUNC10(&dw->lock);

	ret = FUNC7(card, "DW HDMI", 0, 1, 0, &pcm);
	if (ret < 0)
		goto err;

	dw->pcm = pcm;
	pcm->private_data = dw;
	FUNC11(pcm->name, DRIVER_NAME, sizeof(pcm->name));
	FUNC8(pcm, SNDRV_PCM_STREAM_PLAYBACK, &snd_dw_hdmi_ops);

	/*
	 * To support 8-channel 96kHz audio reliably, we need 512k
	 * to satisfy alsa with our restricted period (ERR004323).
	 */
	FUNC6(pcm, SNDRV_DMA_TYPE_DEV,
			dev, 128 * 1024, 1024 * 1024);

	ret = FUNC5(card);
	if (ret < 0)
		goto err;

	FUNC1(pdev, dw);

	return 0;

err:
	FUNC3(card);
	return ret;
}