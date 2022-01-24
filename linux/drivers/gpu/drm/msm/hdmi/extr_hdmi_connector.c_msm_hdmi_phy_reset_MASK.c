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
struct hdmi {int dummy; } ;

/* Variables and functions */
 unsigned int HDMI_PHY_CTRL_SW_RESET ; 
 unsigned int HDMI_PHY_CTRL_SW_RESET_LOW ; 
 unsigned int HDMI_PHY_CTRL_SW_RESET_PLL ; 
 unsigned int HDMI_PHY_CTRL_SW_RESET_PLL_LOW ; 
 int /*<<< orphan*/  REG_HDMI_PHY_CTRL ; 
 unsigned int FUNC0 (struct hdmi*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct hdmi*,int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 

__attribute__((used)) static void FUNC3(struct hdmi *hdmi)
{
	unsigned int val;

	val = FUNC0(hdmi, REG_HDMI_PHY_CTRL);

	if (val & HDMI_PHY_CTRL_SW_RESET_LOW) {
		/* pull low */
		FUNC1(hdmi, REG_HDMI_PHY_CTRL,
				val & ~HDMI_PHY_CTRL_SW_RESET);
	} else {
		/* pull high */
		FUNC1(hdmi, REG_HDMI_PHY_CTRL,
				val | HDMI_PHY_CTRL_SW_RESET);
	}

	if (val & HDMI_PHY_CTRL_SW_RESET_PLL_LOW) {
		/* pull low */
		FUNC1(hdmi, REG_HDMI_PHY_CTRL,
				val & ~HDMI_PHY_CTRL_SW_RESET_PLL);
	} else {
		/* pull high */
		FUNC1(hdmi, REG_HDMI_PHY_CTRL,
				val | HDMI_PHY_CTRL_SW_RESET_PLL);
	}

	FUNC2(100);

	if (val & HDMI_PHY_CTRL_SW_RESET_LOW) {
		/* pull high */
		FUNC1(hdmi, REG_HDMI_PHY_CTRL,
				val | HDMI_PHY_CTRL_SW_RESET);
	} else {
		/* pull low */
		FUNC1(hdmi, REG_HDMI_PHY_CTRL,
				val & ~HDMI_PHY_CTRL_SW_RESET);
	}

	if (val & HDMI_PHY_CTRL_SW_RESET_PLL_LOW) {
		/* pull high */
		FUNC1(hdmi, REG_HDMI_PHY_CTRL,
				val | HDMI_PHY_CTRL_SW_RESET_PLL);
	} else {
		/* pull low */
		FUNC1(hdmi, REG_HDMI_PHY_CTRL,
				val & ~HDMI_PHY_CTRL_SW_RESET_PLL);
	}
}