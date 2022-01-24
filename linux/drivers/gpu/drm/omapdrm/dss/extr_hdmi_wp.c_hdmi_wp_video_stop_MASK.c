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
typedef  int u32 ;
struct hdmi_wp_data {int /*<<< orphan*/  base; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int HDMI_IRQ_VIDEO_FRAME_DONE ; 
 int /*<<< orphan*/  HDMI_WP_IRQSTATUS ; 
 int /*<<< orphan*/  HDMI_WP_IRQSTATUS_RAW ; 
 int /*<<< orphan*/  HDMI_WP_VIDEO_CFG ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,int) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 

void FUNC5(struct hdmi_wp_data *wp)
{
	int i;

	FUNC3(wp->base, HDMI_WP_IRQSTATUS, HDMI_IRQ_VIDEO_FRAME_DONE);

	FUNC1(wp->base, HDMI_WP_VIDEO_CFG, false, 31, 31);

	for (i = 0; i < 50; ++i) {
		u32 v;

		FUNC4(20);

		v = FUNC2(wp->base, HDMI_WP_IRQSTATUS_RAW);
		if (v & HDMI_IRQ_VIDEO_FRAME_DONE)
			return;
	}

	FUNC0("no HDMI FRAMEDONE when disabling output\n");
}