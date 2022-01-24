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
struct TYPE_3__ {unsigned int sample_rate; } ;
struct TYPE_4__ {scalar_t__ aud_input_type; int /*<<< orphan*/  aud_mclk; TYPE_1__ codec_params; } ;
struct mtk_hdmi {TYPE_2__ aud_param; } ;
struct drm_display_mode {int /*<<< orphan*/  clock; } ;

/* Variables and functions */
 int /*<<< orphan*/  CFG2_ACLK_INV ; 
 int EINVAL ; 
 int /*<<< orphan*/  GRL_CFG2 ; 
 scalar_t__ HDMI_AUD_INPUT_I2S ; 
 int /*<<< orphan*/  HDMI_AUD_MCLK_128FS ; 
 int /*<<< orphan*/  FUNC0 (struct mtk_hdmi*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct mtk_hdmi*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct mtk_hdmi*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct mtk_hdmi*,unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct mtk_hdmi*) ; 
 int /*<<< orphan*/  FUNC5 (struct mtk_hdmi*) ; 

__attribute__((used)) static int FUNC6(struct mtk_hdmi *hdmi,
				struct drm_display_mode *display_mode)
{
	unsigned int sample_rate = hdmi->aud_param.codec_params.sample_rate;

	FUNC0(hdmi, false);
	FUNC4(hdmi);
	FUNC1(hdmi, GRL_CFG2, CFG2_ACLK_INV);

	if (hdmi->aud_param.aud_input_type == HDMI_AUD_INPUT_I2S) {
		switch (sample_rate) {
		case 32000:
		case 44100:
		case 48000:
		case 88200:
		case 96000:
			break;
		default:
			return -EINVAL;
		}
		FUNC2(hdmi, hdmi->aud_param.aud_mclk);
	} else {
		switch (sample_rate) {
		case 32000:
		case 44100:
		case 48000:
			break;
		default:
			return -EINVAL;
		}
		FUNC2(hdmi, HDMI_AUD_MCLK_128FS);
	}

	FUNC3(hdmi, sample_rate, display_mode->clock);

	FUNC5(hdmi);
	return 0;
}