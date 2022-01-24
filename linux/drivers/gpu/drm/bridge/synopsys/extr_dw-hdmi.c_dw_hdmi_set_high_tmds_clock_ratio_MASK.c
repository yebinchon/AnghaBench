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
struct TYPE_3__ {unsigned long mtmdsclock; } ;
struct TYPE_4__ {TYPE_1__ video_mode; } ;
struct dw_hdmi {int /*<<< orphan*/  ddc; TYPE_2__ hdmi_data; } ;

/* Variables and functions */
 unsigned long HDMI14_MAX_TMDSCLK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC1 (struct dw_hdmi*) ; 

void FUNC2(struct dw_hdmi *hdmi)
{
	unsigned long mtmdsclock = hdmi->hdmi_data.video_mode.mtmdsclock;

	/* Control for TMDS Bit Period/TMDS Clock-Period Ratio */
	if (FUNC1(hdmi)) {
		if (mtmdsclock > HDMI14_MAX_TMDSCLK)
			FUNC0(hdmi->ddc, 1);
		else
			FUNC0(hdmi->ddc, 0);
	}
}