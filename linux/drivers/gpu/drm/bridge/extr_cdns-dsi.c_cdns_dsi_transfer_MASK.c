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
struct mipi_dsi_packet {int dummy; } ;
struct mipi_dsi_msg {int* tx_buf; int tx_len; int* rx_buf; int rx_len; int flags; int /*<<< orphan*/  type; int /*<<< orphan*/  channel; } ;
struct mipi_dsi_host {int /*<<< orphan*/  dev; } ;
struct cdns_dsi {int direct_cmd_fifo_depth; int rx_fifo_depth; scalar_t__ regs; int /*<<< orphan*/  direct_cmd_comp; } ;
typedef  int ssize_t ;

/* Variables and functions */
 int ACK_RCVD ; 
 int ACK_WITH_ERR_RCVD ; 
 int BTA_EN ; 
 int BTA_REQ ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int CMD_LONG ; 
 int CMD_LP_EN ; 
 int FUNC1 (int) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ DIRECT_CMD_MAIN_SETTINGS ; 
 scalar_t__ DIRECT_CMD_RDDATA ; 
 scalar_t__ DIRECT_CMD_SEND ; 
 scalar_t__ DIRECT_CMD_STS ; 
 scalar_t__ DIRECT_CMD_STS_CLR ; 
 scalar_t__ DIRECT_CMD_STS_CTL ; 
 scalar_t__ DIRECT_CMD_WRDATA ; 
 int EIO ; 
 int ENOTSUPP ; 
 int ETIMEDOUT ; 
 scalar_t__ MCTL_MAIN_DATA_CTL ; 
 int MIPI_DSI_MSG_REQ_ACK ; 
 int MIPI_DSI_MSG_USE_LPM ; 
 int READ_CMD ; 
 int READ_COMPLETED ; 
 int READ_COMPLETED_WITH_ERR ; 
 int READ_EN ; 
 int WRITE_COMPLETED ; 
 int /*<<< orphan*/  FUNC3 (struct cdns_dsi*) ; 
 int FUNC4 (struct mipi_dsi_packet*,struct mipi_dsi_msg const*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int FUNC9 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 struct cdns_dsi* FUNC11 (struct mipi_dsi_host*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int,scalar_t__) ; 

__attribute__((used)) static ssize_t FUNC14(struct mipi_dsi_host *host,
				 const struct mipi_dsi_msg *msg)
{
	struct cdns_dsi *dsi = FUNC11(host);
	u32 cmd, sts, val, wait = WRITE_COMPLETED, ctl = 0;
	struct mipi_dsi_packet packet;
	int ret, i, tx_len, rx_len;

	ret = FUNC7(host->dev);
	if (ret < 0)
		return ret;

	FUNC3(dsi);

	ret = FUNC4(&packet, msg);
	if (ret)
		goto out;

	tx_len = msg->tx_buf ? msg->tx_len : 0;
	rx_len = msg->rx_buf ? msg->rx_len : 0;

	/* For read operations, the maximum TX len is 2. */
	if (rx_len && tx_len > 2) {
		ret = -ENOTSUPP;
		goto out;
	}

	/* TX len is limited by the CMD FIFO depth. */
	if (tx_len > dsi->direct_cmd_fifo_depth) {
		ret = -ENOTSUPP;
		goto out;
	}

	/* RX len is limited by the RX FIFO depth. */
	if (rx_len > dsi->rx_fifo_depth) {
		ret = -ENOTSUPP;
		goto out;
	}

	cmd = FUNC1(tx_len) | FUNC2(msg->channel) |
	      FUNC0(msg->type);

	if (msg->flags & MIPI_DSI_MSG_USE_LPM)
		cmd |= CMD_LP_EN;

	if (FUNC5(msg->type))
		cmd |= CMD_LONG;

	if (rx_len) {
		cmd |= READ_CMD;
		wait = READ_COMPLETED_WITH_ERR | READ_COMPLETED;
		ctl = READ_EN | BTA_EN;
	} else if (msg->flags & MIPI_DSI_MSG_REQ_ACK) {
		cmd |= BTA_REQ;
		wait = ACK_WITH_ERR_RCVD | ACK_RCVD;
		ctl = BTA_EN;
	}

	FUNC13(FUNC9(dsi->regs + MCTL_MAIN_DATA_CTL) | ctl,
	       dsi->regs + MCTL_MAIN_DATA_CTL);

	FUNC13(cmd, dsi->regs + DIRECT_CMD_MAIN_SETTINGS);

	for (i = 0; i < tx_len; i += 4) {
		const u8 *buf = msg->tx_buf;
		int j;

		val = 0;
		for (j = 0; j < 4 && j + i < tx_len; j++)
			val |= (u32)buf[i + j] << (8 * j);

		FUNC13(val, dsi->regs + DIRECT_CMD_WRDATA);
	}

	/* Clear status flags before sending the command. */
	FUNC13(wait, dsi->regs + DIRECT_CMD_STS_CLR);
	FUNC13(wait, dsi->regs + DIRECT_CMD_STS_CTL);
	FUNC10(&dsi->direct_cmd_comp);
	FUNC13(0, dsi->regs + DIRECT_CMD_SEND);

	FUNC12(&dsi->direct_cmd_comp,
				    FUNC6(1000));

	sts = FUNC9(dsi->regs + DIRECT_CMD_STS);
	FUNC13(wait, dsi->regs + DIRECT_CMD_STS_CLR);
	FUNC13(0, dsi->regs + DIRECT_CMD_STS_CTL);

	FUNC13(FUNC9(dsi->regs + MCTL_MAIN_DATA_CTL) & ~ctl,
	       dsi->regs + MCTL_MAIN_DATA_CTL);

	/* We did not receive the events we were waiting for. */
	if (!(sts & wait)) {
		ret = -ETIMEDOUT;
		goto out;
	}

	/* 'READ' or 'WRITE with ACK' failed. */
	if (sts & (READ_COMPLETED_WITH_ERR | ACK_WITH_ERR_RCVD)) {
		ret = -EIO;
		goto out;
	}

	for (i = 0; i < rx_len; i += 4) {
		u8 *buf = msg->rx_buf;
		int j;

		val = FUNC9(dsi->regs + DIRECT_CMD_RDDATA);
		for (j = 0; j < 4 && j + i < rx_len; j++)
			buf[i + j] = val >> (8 * j);
	}

out:
	FUNC8(host->dev);
	return ret;
}