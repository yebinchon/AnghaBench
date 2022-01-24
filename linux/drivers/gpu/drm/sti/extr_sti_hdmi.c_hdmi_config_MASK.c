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
typedef  int u32 ;
struct TYPE_2__ {int flags; } ;
struct sti_hdmi {TYPE_1__ mode; scalar_t__ hdmi_monitor; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int DRM_MODE_FLAG_NHSYNC ; 
 int DRM_MODE_FLAG_NVSYNC ; 
 int /*<<< orphan*/  HDMI_CFG ; 
 int HDMI_CFG_DEVICE_EN ; 
 int HDMI_CFG_ESS_NOT_OESS ; 
 int HDMI_CFG_FIFO_OVERRUN_CLR ; 
 int HDMI_CFG_FIFO_UNDERRUN_CLR ; 
 int HDMI_CFG_HDMI_NOT_DVI ; 
 int HDMI_CFG_H_SYNC_POL_NEG ; 
 int HDMI_CFG_V_SYNC_POL_NEG ; 
 int /*<<< orphan*/  FUNC1 (struct sti_hdmi*,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(struct sti_hdmi *hdmi)
{
	u32 conf;

	FUNC0("\n");

	/* Clear overrun and underrun fifo */
	conf = HDMI_CFG_FIFO_OVERRUN_CLR | HDMI_CFG_FIFO_UNDERRUN_CLR;

	/* Select encryption type and the framing mode */
	conf |= HDMI_CFG_ESS_NOT_OESS;
	if (hdmi->hdmi_monitor)
		conf |= HDMI_CFG_HDMI_NOT_DVI;

	/* Set Hsync polarity */
	if (hdmi->mode.flags & DRM_MODE_FLAG_NHSYNC) {
		FUNC0("H Sync Negative\n");
		conf |= HDMI_CFG_H_SYNC_POL_NEG;
	}

	/* Set Vsync polarity */
	if (hdmi->mode.flags & DRM_MODE_FLAG_NVSYNC) {
		FUNC0("V Sync Negative\n");
		conf |= HDMI_CFG_V_SYNC_POL_NEG;
	}

	/* Enable HDMI */
	conf |= HDMI_CFG_DEVICE_EN;

	FUNC1(hdmi, conf, HDMI_CFG);
}