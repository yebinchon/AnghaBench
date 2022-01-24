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
struct inno_hdmi {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  HDMI_PHY_CHG_PWR ; 
 int /*<<< orphan*/  HDMI_PHY_DRIVER ; 
 int /*<<< orphan*/  HDMI_PHY_PRE_EMPHASIS ; 
 int /*<<< orphan*/  HDMI_PHY_SYNC ; 
 int /*<<< orphan*/  HDMI_PHY_SYS_CTL ; 
#define  LOWER_PWR 129 
#define  NORMAL 128 
 int /*<<< orphan*/  FUNC1 (struct inno_hdmi*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (struct inno_hdmi*,int) ; 

__attribute__((used)) static void FUNC3(struct inno_hdmi *hdmi, int mode)
{
	switch (mode) {
	case NORMAL:
		FUNC2(hdmi, false);

		FUNC1(hdmi, HDMI_PHY_PRE_EMPHASIS, 0x6f);
		FUNC1(hdmi, HDMI_PHY_DRIVER, 0xbb);

		FUNC1(hdmi, HDMI_PHY_SYS_CTL, 0x15);
		FUNC1(hdmi, HDMI_PHY_SYS_CTL, 0x14);
		FUNC1(hdmi, HDMI_PHY_SYS_CTL, 0x10);
		FUNC1(hdmi, HDMI_PHY_CHG_PWR, 0x0f);
		FUNC1(hdmi, HDMI_PHY_SYNC, 0x00);
		FUNC1(hdmi, HDMI_PHY_SYNC, 0x01);

		FUNC2(hdmi, true);
		break;

	case LOWER_PWR:
		FUNC2(hdmi, false);
		FUNC1(hdmi, HDMI_PHY_DRIVER, 0x00);
		FUNC1(hdmi, HDMI_PHY_PRE_EMPHASIS, 0x00);
		FUNC1(hdmi, HDMI_PHY_CHG_PWR, 0x00);
		FUNC1(hdmi, HDMI_PHY_SYS_CTL, 0x15);

		break;

	default:
		FUNC0(hdmi->dev, "Unknown power mode %d\n", mode);
	}
}