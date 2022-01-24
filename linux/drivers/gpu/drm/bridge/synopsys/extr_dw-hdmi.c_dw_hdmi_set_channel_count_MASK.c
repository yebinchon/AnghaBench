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
typedef  unsigned int u8 ;
struct dw_hdmi {int /*<<< orphan*/  audio_mutex; } ;

/* Variables and functions */
 int /*<<< orphan*/  HDMI_FC_AUDICONF0 ; 
 int /*<<< orphan*/  HDMI_FC_AUDICONF0_CC_MASK ; 
 unsigned int HDMI_FC_AUDICONF0_CC_OFFSET ; 
 int /*<<< orphan*/  HDMI_FC_AUDSCONF ; 
 unsigned int HDMI_FC_AUDSCONF_AUD_PACKET_LAYOUT_LAYOUT0 ; 
 unsigned int HDMI_FC_AUDSCONF_AUD_PACKET_LAYOUT_LAYOUT1 ; 
 int /*<<< orphan*/  HDMI_FC_AUDSCONF_AUD_PACKET_LAYOUT_MASK ; 
 int /*<<< orphan*/  FUNC0 (struct dw_hdmi*,unsigned int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

void FUNC3(struct dw_hdmi *hdmi, unsigned int cnt)
{
	u8 layout;

	FUNC1(&hdmi->audio_mutex);

	/*
	 * For >2 channel PCM audio, we need to select layout 1
	 * and set an appropriate channel map.
	 */
	if (cnt > 2)
		layout = HDMI_FC_AUDSCONF_AUD_PACKET_LAYOUT_LAYOUT1;
	else
		layout = HDMI_FC_AUDSCONF_AUD_PACKET_LAYOUT_LAYOUT0;

	FUNC0(hdmi, layout, HDMI_FC_AUDSCONF_AUD_PACKET_LAYOUT_MASK,
		  HDMI_FC_AUDSCONF);

	/* Set the audio infoframes channel count */
	FUNC0(hdmi, (cnt - 1) << HDMI_FC_AUDICONF0_CC_OFFSET,
		  HDMI_FC_AUDICONF0_CC_MASK, HDMI_FC_AUDICONF0);

	FUNC2(&hdmi->audio_mutex);
}