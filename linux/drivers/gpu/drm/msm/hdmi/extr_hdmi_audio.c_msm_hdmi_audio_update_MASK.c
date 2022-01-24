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
typedef  int uint8_t ;
typedef  int uint32_t ;
struct hdmi_msm_audio_arcs {TYPE_1__* lut; } ;
struct hdmi_audio_infoframe {int channels; int /*<<< orphan*/  downmix_inhibit; int /*<<< orphan*/  level_shift_value; int /*<<< orphan*/  channel_allocation; } ;
struct hdmi_audio {int enabled; size_t rate; struct hdmi_audio_infoframe infoframe; } ;
struct hdmi {char* pixclock; scalar_t__ power_on; struct hdmi_audio audio; } ;
typedef  enum hdmi_acr_cts { ____Placeholder_hdmi_acr_cts } hdmi_acr_cts ;
typedef  int /*<<< orphan*/  buf ;
struct TYPE_2__ {int n; int cts; } ;

/* Variables and functions */
 int ACR_32 ; 
 int ACR_44 ; 
 int ACR_48 ; 
 int FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 
 int FUNC2 (int) ; 
 int FUNC3 (int) ; 
 int HDMI_ACR_PKT_CTRL_AUDIO_PRIORITY ; 
 int HDMI_ACR_PKT_CTRL_CONT ; 
 int FUNC4 (int) ; 
 int FUNC5 (int) ; 
 int HDMI_ACR_PKT_CTRL_SELECT__MASK ; 
 int HDMI_ACR_PKT_CTRL_SEND ; 
 int HDMI_ACR_PKT_CTRL_SOURCE ; 
 int HDMI_AUDIO_CFG_ENGINE_ENABLE ; 
 int FUNC6 (int) ; 
 int HDMI_AUDIO_CFG_FIFO_WATERMARK__MASK ; 
 int HDMI_AUDIO_PKT_CTRL1_AUDIO_SAMPLE_SEND ; 
 int /*<<< orphan*/  HDMI_AUDIO_PKT_CTRL2_LAYOUT ; 
 int HDMI_AUDIO_PKT_CTRL2_OVERRIDE ; 
 int /*<<< orphan*/  HDMI_AUD_INT_AUD_FIFO_URUN_INT ; 
 int /*<<< orphan*/  HDMI_AUD_INT_AUD_SAM_DROP_INT ; 
 int HDMI_INFOFRAME_CTRL0_AUDIO_INFO_CONT ; 
 int HDMI_INFOFRAME_CTRL0_AUDIO_INFO_SEND ; 
 int HDMI_INFOFRAME_CTRL0_AUDIO_INFO_SOURCE ; 
 int HDMI_INFOFRAME_CTRL0_AUDIO_INFO_UPDATE ; 
 int HDMI_VBI_PKT_CTRL_GC_ENABLE ; 
 int HDMI_VBI_PKT_CTRL_GC_EVERY_FRAME ; 
 size_t MSM_HDMI_SAMPLE_RATE_176_4KHZ ; 
 size_t MSM_HDMI_SAMPLE_RATE_192KHZ ; 
 size_t MSM_HDMI_SAMPLE_RATE_44_1KHZ ; 
 size_t MSM_HDMI_SAMPLE_RATE_48KHZ ; 
 size_t MSM_HDMI_SAMPLE_RATE_88_2KHZ ; 
 size_t MSM_HDMI_SAMPLE_RATE_96KHZ ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (int) ; 
 int /*<<< orphan*/  REG_HDMI_ACR_PKT_CTRL ; 
 int /*<<< orphan*/  REG_HDMI_AUDIO_CFG ; 
 int /*<<< orphan*/  REG_HDMI_AUDIO_INFO0 ; 
 int /*<<< orphan*/  REG_HDMI_AUDIO_INFO1 ; 
 int /*<<< orphan*/  REG_HDMI_AUDIO_PKT_CTRL1 ; 
 int /*<<< orphan*/  REG_HDMI_AUDIO_PKT_CTRL2 ; 
 int /*<<< orphan*/  REG_HDMI_AUD_INT ; 
 int /*<<< orphan*/  REG_HDMI_GC ; 
 int /*<<< orphan*/  REG_HDMI_INFOFRAME_CTRL0 ; 
 int /*<<< orphan*/  REG_HDMI_VBI_PKT_CTRL ; 
 struct hdmi_msm_audio_arcs* FUNC9 (char*) ; 
 int /*<<< orphan*/  FUNC10 (struct hdmi_audio_infoframe*,int*,int) ; 
 int FUNC11 (struct hdmi*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (struct hdmi*,int /*<<< orphan*/ ,int) ; 

int FUNC13(struct hdmi *hdmi)
{
	struct hdmi_audio *audio = &hdmi->audio;
	struct hdmi_audio_infoframe *info = &audio->infoframe;
	const struct hdmi_msm_audio_arcs *arcs = NULL;
	bool enabled = audio->enabled;
	uint32_t acr_pkt_ctrl, vbi_pkt_ctrl, aud_pkt_ctrl;
	uint32_t infofrm_ctrl, audio_config;

	FUNC1("audio: enabled=%d, channels=%d, channel_allocation=0x%x, "
		"level_shift_value=%d, downmix_inhibit=%d, rate=%d",
		audio->enabled, info->channels,  info->channel_allocation,
		info->level_shift_value, info->downmix_inhibit, audio->rate);
	FUNC1("video: power_on=%d, pixclock=%lu", hdmi->power_on, hdmi->pixclock);

	if (enabled && !(hdmi->power_on && hdmi->pixclock)) {
		FUNC1("disabling audio: no video");
		enabled = false;
	}

	if (enabled) {
		arcs = FUNC9(hdmi->pixclock);
		if (!arcs) {
			FUNC1("disabling audio: unsupported pixclock: %lu",
					hdmi->pixclock);
			enabled = false;
		}
	}

	/* Read first before writing */
	acr_pkt_ctrl = FUNC11(hdmi, REG_HDMI_ACR_PKT_CTRL);
	vbi_pkt_ctrl = FUNC11(hdmi, REG_HDMI_VBI_PKT_CTRL);
	aud_pkt_ctrl = FUNC11(hdmi, REG_HDMI_AUDIO_PKT_CTRL1);
	infofrm_ctrl = FUNC11(hdmi, REG_HDMI_INFOFRAME_CTRL0);
	audio_config = FUNC11(hdmi, REG_HDMI_AUDIO_CFG);

	/* Clear N/CTS selection bits */
	acr_pkt_ctrl &= ~HDMI_ACR_PKT_CTRL_SELECT__MASK;

	if (enabled) {
		uint32_t n, cts, multiplier;
		enum hdmi_acr_cts select;
		uint8_t buf[14];

		n   = arcs->lut[audio->rate].n;
		cts = arcs->lut[audio->rate].cts;

		if ((MSM_HDMI_SAMPLE_RATE_192KHZ == audio->rate) ||
				(MSM_HDMI_SAMPLE_RATE_176_4KHZ == audio->rate)) {
			multiplier = 4;
			n >>= 2; /* divide N by 4 and use multiplier */
		} else if ((MSM_HDMI_SAMPLE_RATE_96KHZ == audio->rate) ||
				(MSM_HDMI_SAMPLE_RATE_88_2KHZ == audio->rate)) {
			multiplier = 2;
			n >>= 1; /* divide N by 2 and use multiplier */
		} else {
			multiplier = 1;
		}

		FUNC1("n=%u, cts=%u, multiplier=%u", n, cts, multiplier);

		acr_pkt_ctrl |= HDMI_ACR_PKT_CTRL_SOURCE;
		acr_pkt_ctrl |= HDMI_ACR_PKT_CTRL_AUDIO_PRIORITY;
		acr_pkt_ctrl |= FUNC4(multiplier);

		if ((MSM_HDMI_SAMPLE_RATE_48KHZ == audio->rate) ||
				(MSM_HDMI_SAMPLE_RATE_96KHZ == audio->rate) ||
				(MSM_HDMI_SAMPLE_RATE_192KHZ == audio->rate))
			select = ACR_48;
		else if ((MSM_HDMI_SAMPLE_RATE_44_1KHZ == audio->rate) ||
				(MSM_HDMI_SAMPLE_RATE_88_2KHZ == audio->rate) ||
				(MSM_HDMI_SAMPLE_RATE_176_4KHZ == audio->rate))
			select = ACR_44;
		else /* default to 32k */
			select = ACR_32;

		acr_pkt_ctrl |= FUNC5(select);

		FUNC12(hdmi, FUNC7(select - 1),
				FUNC2(cts));
		FUNC12(hdmi, FUNC8(select - 1),
				FUNC3(n));

		FUNC12(hdmi, REG_HDMI_AUDIO_PKT_CTRL2,
				FUNC0(info->channels != 2, HDMI_AUDIO_PKT_CTRL2_LAYOUT) |
				HDMI_AUDIO_PKT_CTRL2_OVERRIDE);

		acr_pkt_ctrl |= HDMI_ACR_PKT_CTRL_CONT;
		acr_pkt_ctrl |= HDMI_ACR_PKT_CTRL_SEND;

		/* configure infoframe: */
		FUNC10(info, buf, sizeof(buf));
		FUNC12(hdmi, REG_HDMI_AUDIO_INFO0,
				(buf[3] <<  0) | (buf[4] <<  8) |
				(buf[5] << 16) | (buf[6] << 24));
		FUNC12(hdmi, REG_HDMI_AUDIO_INFO1,
				(buf[7] <<  0) | (buf[8] << 8));

		FUNC12(hdmi, REG_HDMI_GC, 0);

		vbi_pkt_ctrl |= HDMI_VBI_PKT_CTRL_GC_ENABLE;
		vbi_pkt_ctrl |= HDMI_VBI_PKT_CTRL_GC_EVERY_FRAME;

		aud_pkt_ctrl |= HDMI_AUDIO_PKT_CTRL1_AUDIO_SAMPLE_SEND;

		infofrm_ctrl |= HDMI_INFOFRAME_CTRL0_AUDIO_INFO_SEND;
		infofrm_ctrl |= HDMI_INFOFRAME_CTRL0_AUDIO_INFO_CONT;
		infofrm_ctrl |= HDMI_INFOFRAME_CTRL0_AUDIO_INFO_SOURCE;
		infofrm_ctrl |= HDMI_INFOFRAME_CTRL0_AUDIO_INFO_UPDATE;

		audio_config &= ~HDMI_AUDIO_CFG_FIFO_WATERMARK__MASK;
		audio_config |= FUNC6(4);
		audio_config |= HDMI_AUDIO_CFG_ENGINE_ENABLE;
	} else {
		acr_pkt_ctrl &= ~HDMI_ACR_PKT_CTRL_CONT;
		acr_pkt_ctrl &= ~HDMI_ACR_PKT_CTRL_SEND;
		vbi_pkt_ctrl &= ~HDMI_VBI_PKT_CTRL_GC_ENABLE;
		vbi_pkt_ctrl &= ~HDMI_VBI_PKT_CTRL_GC_EVERY_FRAME;
		aud_pkt_ctrl &= ~HDMI_AUDIO_PKT_CTRL1_AUDIO_SAMPLE_SEND;
		infofrm_ctrl &= ~HDMI_INFOFRAME_CTRL0_AUDIO_INFO_SEND;
		infofrm_ctrl &= ~HDMI_INFOFRAME_CTRL0_AUDIO_INFO_CONT;
		infofrm_ctrl &= ~HDMI_INFOFRAME_CTRL0_AUDIO_INFO_SOURCE;
		infofrm_ctrl &= ~HDMI_INFOFRAME_CTRL0_AUDIO_INFO_UPDATE;
		audio_config &= ~HDMI_AUDIO_CFG_ENGINE_ENABLE;
	}

	FUNC12(hdmi, REG_HDMI_ACR_PKT_CTRL, acr_pkt_ctrl);
	FUNC12(hdmi, REG_HDMI_VBI_PKT_CTRL, vbi_pkt_ctrl);
	FUNC12(hdmi, REG_HDMI_AUDIO_PKT_CTRL1, aud_pkt_ctrl);
	FUNC12(hdmi, REG_HDMI_INFOFRAME_CTRL0, infofrm_ctrl);

	FUNC12(hdmi, REG_HDMI_AUD_INT,
			FUNC0(enabled, HDMI_AUD_INT_AUD_FIFO_URUN_INT) |
			FUNC0(enabled, HDMI_AUD_INT_AUD_SAM_DROP_INT));

	FUNC12(hdmi, REG_HDMI_AUDIO_CFG, audio_config);


	FUNC1("audio %sabled", enabled ? "en" : "dis");

	return 0;
}