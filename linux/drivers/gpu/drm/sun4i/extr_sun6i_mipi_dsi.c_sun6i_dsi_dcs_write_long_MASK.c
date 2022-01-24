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
typedef  int /*<<< orphan*/  u8 ;
typedef  int /*<<< orphan*/  u16 ;
struct sun6i_dsi {int /*<<< orphan*/  regs; } ;
struct mipi_dsi_msg {int tx_len; int /*<<< orphan*/ * tx_buf; } ;
typedef  int /*<<< orphan*/  crc ;

/* Variables and functions */
 int /*<<< orphan*/  DSI_START_LPTX ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  SUN6I_DSI_CMD_CTL_REG ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int) ; 
 int FUNC7 (struct sun6i_dsi*,struct mipi_dsi_msg const*) ; 
 int /*<<< orphan*/  FUNC8 (struct sun6i_dsi*) ; 
 int FUNC9 (struct sun6i_dsi*) ; 
 int /*<<< orphan*/  FUNC10 (struct sun6i_dsi*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC11(struct sun6i_dsi *dsi,
				    const struct mipi_dsi_msg *msg)
{
	int ret, len = 0;
	u8 *bounce;
	u16 crc;

	FUNC5(dsi->regs, FUNC0(0),
		     FUNC7(dsi, msg));

	bounce = FUNC2(msg->tx_len + sizeof(crc), GFP_KERNEL);
	if (!bounce)
		return -ENOMEM;

	FUNC3(bounce, msg->tx_buf, msg->tx_len);
	len += msg->tx_len;

	crc = FUNC6(bounce, msg->tx_len);
	FUNC3((u8 *)bounce + msg->tx_len, &crc, sizeof(crc));
	len += sizeof(crc);

	FUNC4(dsi->regs, FUNC0(1), bounce, len);
	FUNC5(dsi->regs, SUN6I_DSI_CMD_CTL_REG, len + 4 - 1);
	FUNC1(bounce);

	FUNC10(dsi, DSI_START_LPTX);

	ret = FUNC9(dsi);
	if (ret < 0) {
		FUNC8(dsi);
		return ret;
	}

	/*
	 * TODO: There's some bits (reg 0x200, bits 8/9) that
	 * apparently can be used to check whether the data have been
	 * sent, but I couldn't get it to work reliably.
	 */
	return msg->tx_len;
}