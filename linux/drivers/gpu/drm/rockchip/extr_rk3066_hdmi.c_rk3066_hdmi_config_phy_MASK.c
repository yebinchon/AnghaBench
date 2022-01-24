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
struct rk3066_hdmi {int tmdsclk; } ;

/* Variables and functions */
 int /*<<< orphan*/  HDMI_DEEP_COLOR_MODE ; 
 int /*<<< orphan*/  FUNC0 (struct rk3066_hdmi*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (struct rk3066_hdmi*,int,int) ; 

__attribute__((used)) static void FUNC2(struct rk3066_hdmi *hdmi)
{
	/* TMDS uses the same frequency as dclk. */
	FUNC0(hdmi, HDMI_DEEP_COLOR_MODE, 0x22);

	/*
	 * The semi-public documentation does not describe the hdmi registers
	 * used by the function rk3066_hdmi_phy_write(), so we keep using
	 * these magic values for now.
	 */
	if (hdmi->tmdsclk > 100000000) {
		FUNC1(hdmi, 0x158, 0x0E);
		FUNC1(hdmi, 0x15c, 0x00);
		FUNC1(hdmi, 0x160, 0x60);
		FUNC1(hdmi, 0x164, 0x00);
		FUNC1(hdmi, 0x168, 0xDA);
		FUNC1(hdmi, 0x16c, 0xA1);
		FUNC1(hdmi, 0x170, 0x0e);
		FUNC1(hdmi, 0x174, 0x22);
		FUNC1(hdmi, 0x178, 0x00);
	} else if (hdmi->tmdsclk > 50000000) {
		FUNC1(hdmi, 0x158, 0x06);
		FUNC1(hdmi, 0x15c, 0x00);
		FUNC1(hdmi, 0x160, 0x60);
		FUNC1(hdmi, 0x164, 0x00);
		FUNC1(hdmi, 0x168, 0xCA);
		FUNC1(hdmi, 0x16c, 0xA3);
		FUNC1(hdmi, 0x170, 0x0e);
		FUNC1(hdmi, 0x174, 0x20);
		FUNC1(hdmi, 0x178, 0x00);
	} else {
		FUNC1(hdmi, 0x158, 0x02);
		FUNC1(hdmi, 0x15c, 0x00);
		FUNC1(hdmi, 0x160, 0x60);
		FUNC1(hdmi, 0x164, 0x00);
		FUNC1(hdmi, 0x168, 0xC2);
		FUNC1(hdmi, 0x16c, 0xA2);
		FUNC1(hdmi, 0x170, 0x0e);
		FUNC1(hdmi, 0x174, 0x20);
		FUNC1(hdmi, 0x178, 0x00);
	}
}