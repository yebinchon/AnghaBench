#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int u8 ;
struct mtk_hdmi {int dummy; } ;
typedef  enum hdmi_aud_channel_type { ____Placeholder_hdmi_aud_channel_type } hdmi_aud_channel_type ;

/* Variables and functions */
 unsigned int FUNC0 (int,int) ; 
 int /*<<< orphan*/  GRL_CH_SW0 ; 
 int /*<<< orphan*/  GRL_CH_SW1 ; 
 int /*<<< orphan*/  GRL_CH_SW2 ; 
 int /*<<< orphan*/  GRL_I2S_UV ; 
 int HDMI_AUD_CHAN_TYPE_3_0_LRS ; 
 int HDMI_AUD_CHAN_TYPE_4_0 ; 
 int HDMI_AUD_CHAN_TYPE_4_1_CLRS ; 
 int HDMI_AUD_CHAN_TYPE_5_1 ; 
 int FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct mtk_hdmi*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC3(struct mtk_hdmi *hdmi,
					enum hdmi_aud_channel_type channel_type,
					u8 channel_count)
{
	unsigned int ch_switch;
	u8 i2s_uv;

	ch_switch = FUNC0(7, 7) | FUNC0(6, 6) |
		    FUNC0(5, 5) | FUNC0(4, 4) |
		    FUNC0(3, 3) | FUNC0(1, 2) |
		    FUNC0(2, 1) | FUNC0(0, 0);

	if (channel_count == 2) {
		i2s_uv = FUNC1(0);
	} else if (channel_count == 3 || channel_count == 4) {
		if (channel_count == 4 &&
		    (channel_type == HDMI_AUD_CHAN_TYPE_3_0_LRS ||
		    channel_type == HDMI_AUD_CHAN_TYPE_4_0))
			i2s_uv = FUNC1(2) | FUNC1(0);
		else
			i2s_uv = FUNC1(3) | FUNC1(2);
	} else if (channel_count == 6 || channel_count == 5) {
		if (channel_count == 6 &&
		    channel_type != HDMI_AUD_CHAN_TYPE_5_1 &&
		    channel_type != HDMI_AUD_CHAN_TYPE_4_1_CLRS) {
			i2s_uv = FUNC1(3) | FUNC1(2) |
				 FUNC1(1) | FUNC1(0);
		} else {
			i2s_uv = FUNC1(2) | FUNC1(1) |
				 FUNC1(0);
		}
	} else if (channel_count == 8 || channel_count == 7) {
		i2s_uv = FUNC1(3) | FUNC1(2) |
			 FUNC1(1) | FUNC1(0);
	} else {
		i2s_uv = FUNC1(0);
	}

	FUNC2(hdmi, GRL_CH_SW0, ch_switch & 0xff);
	FUNC2(hdmi, GRL_CH_SW1, (ch_switch >> 8) & 0xff);
	FUNC2(hdmi, GRL_CH_SW2, (ch_switch >> 16) & 0xff);
	FUNC2(hdmi, GRL_I2S_UV, i2s_uv);
}