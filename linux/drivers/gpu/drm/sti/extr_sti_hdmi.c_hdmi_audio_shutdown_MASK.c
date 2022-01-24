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
struct TYPE_2__ {int enabled; } ;
struct sti_hdmi {TYPE_1__ audio; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  HDMI_AUDIO_CFG ; 
 int HDMI_AUD_CFG_DTS_INVALID ; 
 int HDMI_AUD_CFG_ONE_BIT_INVALID ; 
 int HDMI_AUD_CFG_SPDIF_DIV_2 ; 
 struct sti_hdmi* FUNC1 (struct device*) ; 
 int /*<<< orphan*/  FUNC2 (struct sti_hdmi*) ; 
 int /*<<< orphan*/  FUNC3 (struct sti_hdmi*,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(struct device *dev, void *data)
{
	struct sti_hdmi *hdmi = FUNC1(dev);
	int audio_cfg;

	FUNC0("\n");

	/* disable audio */
	audio_cfg = HDMI_AUD_CFG_SPDIF_DIV_2 | HDMI_AUD_CFG_DTS_INVALID |
		    HDMI_AUD_CFG_ONE_BIT_INVALID;
	FUNC3(hdmi, audio_cfg, HDMI_AUDIO_CFG);

	hdmi->audio.enabled = false;
	FUNC2(hdmi);
}