#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u32 ;
struct TYPE_3__ {int hdisplay; scalar_t__ vdisplay; } ;
struct sti_hdmi {TYPE_1__ mode; } ;

/* Variables and functions */
 int /*<<< orphan*/  HDMI_ACTIVE_VID_XMAX ; 
 int /*<<< orphan*/  HDMI_ACTIVE_VID_XMIN ; 
 int /*<<< orphan*/  HDMI_ACTIVE_VID_YMAX ; 
 int /*<<< orphan*/  HDMI_ACTIVE_VID_YMIN ; 
 int /*<<< orphan*/  FUNC0 (struct sti_hdmi*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__,int) ; 

__attribute__((used)) static void FUNC3(struct sti_hdmi *hdmi)
{
	u32 xmin, xmax;
	u32 ymin, ymax;

	xmin = FUNC2(hdmi->mode, 1);
	xmax = FUNC2(hdmi->mode, hdmi->mode.hdisplay);
	ymin = FUNC1(hdmi->mode, 0);
	ymax = FUNC1(hdmi->mode, hdmi->mode.vdisplay - 1);

	FUNC0(hdmi, xmin, HDMI_ACTIVE_VID_XMIN);
	FUNC0(hdmi, xmax, HDMI_ACTIVE_VID_XMAX);
	FUNC0(hdmi, ymin, HDMI_ACTIVE_VID_YMIN);
	FUNC0(hdmi, ymax, HDMI_ACTIVE_VID_YMAX);
}