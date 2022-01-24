#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {struct snd_pcm_substream* substream; } ;
struct vc4_hdmi {TYPE_1__* connector; TYPE_2__ audio; struct drm_encoder* encoder; } ;
struct vc4_dev {int dummy; } ;
struct snd_soc_dai {int dummy; } ;
struct snd_pcm_substream {int /*<<< orphan*/  runtime; } ;
struct drm_encoder {int /*<<< orphan*/  crtc; int /*<<< orphan*/  dev; } ;
struct TYPE_3__ {int /*<<< orphan*/  eld; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENODEV ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  VC4_HDMI_RAM_PACKET_CONFIG ; 
 int VC4_HDMI_RAM_PACKET_ENABLE ; 
 struct vc4_hdmi* FUNC1 (struct snd_soc_dai*) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct vc4_dev* FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct snd_pcm_substream *substream,
				  struct snd_soc_dai *dai)
{
	struct vc4_hdmi *hdmi = FUNC1(dai);
	struct drm_encoder *encoder = hdmi->encoder;
	struct vc4_dev *vc4 = FUNC3(encoder->dev);
	int ret;

	if (hdmi->audio.substream && hdmi->audio.substream != substream)
		return -EINVAL;

	hdmi->audio.substream = substream;

	/*
	 * If the HDMI encoder hasn't probed, or the encoder is
	 * currently in DVI mode, treat the codec dai as missing.
	 */
	if (!encoder->crtc || !(FUNC0(VC4_HDMI_RAM_PACKET_CONFIG) &
				VC4_HDMI_RAM_PACKET_ENABLE))
		return -ENODEV;

	ret = FUNC2(substream->runtime,
					hdmi->connector->eld);
	if (ret)
		return ret;

	return 0;
}