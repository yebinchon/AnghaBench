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
typedef  int /*<<< orphan*/  uint32_t ;
struct hdmi {int /*<<< orphan*/  reg_lock; int /*<<< orphan*/  hdmi_mode; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  HDMI_CTRL_ENABLE ; 
 int /*<<< orphan*/  HDMI_CTRL_HDMI ; 
 int /*<<< orphan*/  REG_HDMI_CTRL ; 
 int /*<<< orphan*/  FUNC1 (struct hdmi*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 

void FUNC4(struct hdmi *hdmi, bool power_on)
{
	uint32_t ctrl = 0;
	unsigned long flags;

	FUNC2(&hdmi->reg_lock, flags);
	if (power_on) {
		ctrl |= HDMI_CTRL_ENABLE;
		if (!hdmi->hdmi_mode) {
			ctrl |= HDMI_CTRL_HDMI;
			FUNC1(hdmi, REG_HDMI_CTRL, ctrl);
			ctrl &= ~HDMI_CTRL_HDMI;
		} else {
			ctrl |= HDMI_CTRL_HDMI;
		}
	} else {
		ctrl = HDMI_CTRL_HDMI;
	}

	FUNC1(hdmi, REG_HDMI_CTRL, ctrl);
	FUNC3(&hdmi->reg_lock, flags);
	FUNC0("HDMI Core: %s, HDMI_CTRL=0x%08x",
			power_on ? "Enable" : "Disable", ctrl);
}