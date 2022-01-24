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
typedef  int u8 ;
typedef  int u32 ;
struct sun6i_dsi {int /*<<< orphan*/  regs; } ;
struct mipi_dsi_msg {scalar_t__ rx_buf; } ;

/* Variables and functions */
 int /*<<< orphan*/  DSI_START_LPRX ; 
 int EIO ; 
 int MIPI_DSI_RX_ACKNOWLEDGE_AND_ERROR_REPORT ; 
 int /*<<< orphan*/  SUN6I_DSI_CMD_CTL_REG ; 
 int SUN6I_DSI_CMD_CTL_RX_OVERFLOW ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int FUNC4 (struct sun6i_dsi*,struct mipi_dsi_msg const*) ; 
 int /*<<< orphan*/  FUNC5 (struct sun6i_dsi*) ; 
 int FUNC6 (struct sun6i_dsi*) ; 
 int /*<<< orphan*/  FUNC7 (struct sun6i_dsi*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC8(struct sun6i_dsi *dsi,
			      const struct mipi_dsi_msg *msg)
{
	u32 val;
	int ret;
	u8 byte0;

	FUNC3(dsi->regs, FUNC1(0),
		     FUNC4(dsi, msg));
	FUNC3(dsi->regs, SUN6I_DSI_CMD_CTL_REG,
		     (4 - 1));

	FUNC7(dsi, DSI_START_LPRX);

	ret = FUNC6(dsi);
	if (ret < 0) {
		FUNC5(dsi);
		return ret;
	}

	/*
	 * TODO: There's some bits (reg 0x200, bits 24/25) that
	 * apparently can be used to check whether the data have been
	 * received, but I couldn't get it to work reliably.
	 */
	FUNC2(dsi->regs, SUN6I_DSI_CMD_CTL_REG, &val);
	if (val & SUN6I_DSI_CMD_CTL_RX_OVERFLOW)
		return -EIO;

	FUNC2(dsi->regs, FUNC0(0), &val);
	byte0 = val & 0xff;
	if (byte0 == MIPI_DSI_RX_ACKNOWLEDGE_AND_ERROR_REPORT)
		return -EIO;

	((u8 *)msg->rx_buf)[0] = (val >> 8);

	return 1;
}