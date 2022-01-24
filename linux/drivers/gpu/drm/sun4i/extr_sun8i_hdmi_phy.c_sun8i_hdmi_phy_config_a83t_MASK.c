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
struct sun8i_hdmi_phy {int /*<<< orphan*/  regs; } ;
struct dw_hdmi {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  I2C_ADDR ; 
 int /*<<< orphan*/  SUN8I_HDMI_PHY_REXT_CTRL_REG ; 
 int /*<<< orphan*/  SUN8I_HDMI_PHY_REXT_CTRL_REXT_EN ; 
 int /*<<< orphan*/  FUNC0 (struct dw_hdmi*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct dw_hdmi*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct dw_hdmi*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct dw_hdmi*,int,int) ; 
 int /*<<< orphan*/  FUNC4 (struct dw_hdmi*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(struct dw_hdmi *hdmi,
				      struct sun8i_hdmi_phy *phy,
				      unsigned int clk_rate)
{
	FUNC5(phy->regs, SUN8I_HDMI_PHY_REXT_CTRL_REG,
			   SUN8I_HDMI_PHY_REXT_CTRL_REXT_EN,
			   SUN8I_HDMI_PHY_REXT_CTRL_REXT_EN);

	/* power down */
	FUNC1(hdmi, 0);
	FUNC0(hdmi, 1);

	FUNC4(hdmi);

	FUNC0(hdmi, 0);

	FUNC2(hdmi, I2C_ADDR);

	/*
	 * Values are taken from BSP HDMI driver. Although AW didn't
	 * release any documentation, explanation of this values can
	 * be found in i.MX 6Dual/6Quad Reference Manual.
	 */
	if (clk_rate <= 27000000) {
		FUNC3(hdmi, 0x01e0, 0x06);
		FUNC3(hdmi, 0x0000, 0x15);
		FUNC3(hdmi, 0x08da, 0x10);
		FUNC3(hdmi, 0x0007, 0x19);
		FUNC3(hdmi, 0x0318, 0x0e);
		FUNC3(hdmi, 0x8009, 0x09);
	} else if (clk_rate <= 74250000) {
		FUNC3(hdmi, 0x0540, 0x06);
		FUNC3(hdmi, 0x0005, 0x15);
		FUNC3(hdmi, 0x0000, 0x10);
		FUNC3(hdmi, 0x0007, 0x19);
		FUNC3(hdmi, 0x02b5, 0x0e);
		FUNC3(hdmi, 0x8009, 0x09);
	} else if (clk_rate <= 148500000) {
		FUNC3(hdmi, 0x04a0, 0x06);
		FUNC3(hdmi, 0x000a, 0x15);
		FUNC3(hdmi, 0x0000, 0x10);
		FUNC3(hdmi, 0x0002, 0x19);
		FUNC3(hdmi, 0x0021, 0x0e);
		FUNC3(hdmi, 0x8029, 0x09);
	} else {
		FUNC3(hdmi, 0x0000, 0x06);
		FUNC3(hdmi, 0x000f, 0x15);
		FUNC3(hdmi, 0x0000, 0x10);
		FUNC3(hdmi, 0x0002, 0x19);
		FUNC3(hdmi, 0x0000, 0x0e);
		FUNC3(hdmi, 0x802b, 0x09);
	}

	FUNC3(hdmi, 0x0000, 0x1e);
	FUNC3(hdmi, 0x0000, 0x13);
	FUNC3(hdmi, 0x0000, 0x17);

	FUNC1(hdmi, 1);

	return 0;
}