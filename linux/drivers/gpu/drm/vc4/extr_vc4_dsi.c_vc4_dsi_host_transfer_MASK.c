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
typedef  int u8 ;
typedef  int u32 ;
struct vc4_dsi {int xfer_result; TYPE_1__* pdev; int /*<<< orphan*/  xfer_completion; } ;
struct mipi_dsi_packet {int* header; int payload_length; int* payload; } ;
struct mipi_dsi_msg {int rx_len; int flags; int* rx_buf; int /*<<< orphan*/  type; } ;
struct mipi_dsi_host {int dummy; } ;
typedef  int ssize_t ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  CTRL ; 
 int /*<<< orphan*/  CTRL_RESET_FIFOS ; 
 int /*<<< orphan*/  FUNC0 (char*,int,...) ; 
 int DSI1_INTERRUPTS_ALWAYS_ENABLED ; 
 int DSI1_INT_PHY_DIR_RTF ; 
 int DSI1_INT_TXPKT1_DONE ; 
 int /*<<< orphan*/  DSI1_RXPKT_FIFO ; 
 int DSI_PIX_FIFO_DEPTH ; 
 int DSI_PIX_FIFO_WIDTH ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int const) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  DSI_RXPKT1H_BC_PARAM ; 
 int DSI_RXPKT1H_PKT_TYPE_LONG ; 
 int /*<<< orphan*/  DSI_RXPKT1H_SHORT_0 ; 
 int /*<<< orphan*/  DSI_RXPKT1H_SHORT_1 ; 
 int /*<<< orphan*/  DSI_TXPKT1C_CMD_CTRL ; 
 int DSI_TXPKT1C_CMD_CTRL_RX ; 
 int DSI_TXPKT1C_CMD_CTRL_TX ; 
 int DSI_TXPKT1C_CMD_EN ; 
 int DSI_TXPKT1C_CMD_MODE_LP ; 
 int /*<<< orphan*/  DSI_TXPKT1C_CMD_REPEAT ; 
 int DSI_TXPKT1C_CMD_TYPE_LONG ; 
 int /*<<< orphan*/  DSI_TXPKT1C_DISPLAY_NO ; 
 int DSI_TXPKT1C_DISPLAY_NO_SECONDARY ; 
 int DSI_TXPKT1C_DISPLAY_NO_SHORT ; 
 int /*<<< orphan*/  DSI_TXPKT1H_BC_CMDFIFO ; 
 int /*<<< orphan*/  DSI_TXPKT1H_BC_DT ; 
 int /*<<< orphan*/  DSI_TXPKT1H_BC_PARAM ; 
 int ENXIO ; 
 int ETIMEDOUT ; 
 int /*<<< orphan*/  INT_EN ; 
 int /*<<< orphan*/  INT_STAT ; 
 int MIPI_DSI_MSG_USE_LPM ; 
 int /*<<< orphan*/  RXPKT1H ; 
 int /*<<< orphan*/  TXPKT1C ; 
 int /*<<< orphan*/  TXPKT1H ; 
 int /*<<< orphan*/  TXPKT_CMD_FIFO ; 
 int /*<<< orphan*/  TXPKT_PIX_FIFO ; 
 int FUNC5 (int,int /*<<< orphan*/ ) ; 
 int FUNC6 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,char*,...) ; 
 struct vc4_dsi* FUNC9 (struct mipi_dsi_host*) ; 
 int /*<<< orphan*/  FUNC10 (struct mipi_dsi_packet*,struct mipi_dsi_msg const*) ; 
 int FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static ssize_t FUNC16(struct mipi_dsi_host *host,
				     const struct mipi_dsi_msg *msg)
{
	struct vc4_dsi *dsi = FUNC9(host);
	struct mipi_dsi_packet packet;
	u32 pkth = 0, pktc = 0;
	int i, ret;
	bool is_long = FUNC11(msg->type);
	u32 cmd_fifo_len = 0, pix_fifo_len = 0;

	FUNC10(&packet, msg);

	pkth |= FUNC6(packet.header[0], DSI_TXPKT1H_BC_DT);
	pkth |= FUNC6(packet.header[1] |
			      (packet.header[2] << 8),
			      DSI_TXPKT1H_BC_PARAM);
	if (is_long) {
		/* Divide data across the various FIFOs we have available.
		 * The command FIFO takes byte-oriented data, but is of
		 * limited size. The pixel FIFO (never actually used for
		 * pixel data in reality) is word oriented, and substantially
		 * larger. So, we use the pixel FIFO for most of the data,
		 * sending the residual bytes in the command FIFO at the start.
		 *
		 * With this arrangement, the command FIFO will never get full.
		 */
		if (packet.payload_length <= 16) {
			cmd_fifo_len = packet.payload_length;
			pix_fifo_len = 0;
		} else {
			cmd_fifo_len = (packet.payload_length %
					DSI_PIX_FIFO_WIDTH);
			pix_fifo_len = ((packet.payload_length - cmd_fifo_len) /
					DSI_PIX_FIFO_WIDTH);
		}

		FUNC7(pix_fifo_len >= DSI_PIX_FIFO_DEPTH);

		pkth |= FUNC6(cmd_fifo_len, DSI_TXPKT1H_BC_CMDFIFO);
	}

	if (msg->rx_len) {
		pktc |= FUNC6(DSI_TXPKT1C_CMD_CTRL_RX,
				      DSI_TXPKT1C_CMD_CTRL);
	} else {
		pktc |= FUNC6(DSI_TXPKT1C_CMD_CTRL_TX,
				      DSI_TXPKT1C_CMD_CTRL);
	}

	for (i = 0; i < cmd_fifo_len; i++)
		FUNC3(TXPKT_CMD_FIFO, packet.payload[i]);
	for (i = 0; i < pix_fifo_len; i++) {
		const u8 *pix = packet.payload + cmd_fifo_len + i * 4;

		FUNC3(TXPKT_PIX_FIFO,
			       pix[0] |
			       pix[1] << 8 |
			       pix[2] << 16 |
			       pix[3] << 24);
	}

	if (msg->flags & MIPI_DSI_MSG_USE_LPM)
		pktc |= DSI_TXPKT1C_CMD_MODE_LP;
	if (is_long)
		pktc |= DSI_TXPKT1C_CMD_TYPE_LONG;

	/* Send one copy of the packet.  Larger repeats are used for pixel
	 * data in command mode.
	 */
	pktc |= FUNC6(1, DSI_TXPKT1C_CMD_REPEAT);

	pktc |= DSI_TXPKT1C_CMD_EN;
	if (pix_fifo_len) {
		pktc |= FUNC6(DSI_TXPKT1C_DISPLAY_NO_SECONDARY,
				      DSI_TXPKT1C_DISPLAY_NO);
	} else {
		pktc |= FUNC6(DSI_TXPKT1C_DISPLAY_NO_SHORT,
				      DSI_TXPKT1C_DISPLAY_NO);
	}

	/* Enable the appropriate interrupt for the transfer completion. */
	dsi->xfer_result = 0;
	FUNC13(&dsi->xfer_completion);
	FUNC3(INT_STAT, DSI1_INT_TXPKT1_DONE | DSI1_INT_PHY_DIR_RTF);
	if (msg->rx_len) {
		FUNC3(INT_EN, (DSI1_INTERRUPTS_ALWAYS_ENABLED |
					DSI1_INT_PHY_DIR_RTF));
	} else {
		FUNC3(INT_EN, (DSI1_INTERRUPTS_ALWAYS_ENABLED |
					DSI1_INT_TXPKT1_DONE));
	}

	/* Send the packet. */
	FUNC3(TXPKT1H, pkth);
	FUNC3(TXPKT1C, pktc);

	if (!FUNC15(&dsi->xfer_completion,
					 FUNC12(1000))) {
		FUNC8(&dsi->pdev->dev, "transfer interrupt wait timeout");
		FUNC8(&dsi->pdev->dev, "instat: 0x%08x\n",
			FUNC2(INT_STAT));
		ret = -ETIMEDOUT;
	} else {
		ret = dsi->xfer_result;
	}

	FUNC3(INT_EN, DSI1_INTERRUPTS_ALWAYS_ENABLED);

	if (ret)
		goto reset_fifo_and_return;

	if (ret == 0 && msg->rx_len) {
		u32 rxpkt1h = FUNC2(RXPKT1H);
		u8 *msg_rx = msg->rx_buf;

		if (rxpkt1h & DSI_RXPKT1H_PKT_TYPE_LONG) {
			u32 rxlen = FUNC5(rxpkt1h,
						  DSI_RXPKT1H_BC_PARAM);

			if (rxlen != msg->rx_len) {
				FUNC0("DSI returned %db, expecting %db\n",
					  rxlen, (int)msg->rx_len);
				ret = -ENXIO;
				goto reset_fifo_and_return;
			}

			for (i = 0; i < msg->rx_len; i++)
				msg_rx[i] = FUNC4(DSI1_RXPKT_FIFO);
		} else {
			/* FINISHME: Handle AWER */

			msg_rx[0] = FUNC5(rxpkt1h,
						  DSI_RXPKT1H_SHORT_0);
			if (msg->rx_len > 1) {
				msg_rx[1] = FUNC5(rxpkt1h,
							  DSI_RXPKT1H_SHORT_1);
			}
		}
	}

	return ret;

reset_fifo_and_return:
	FUNC0("DSI transfer failed, resetting: %d\n", ret);

	FUNC3(TXPKT1C, FUNC2(TXPKT1C) & ~DSI_TXPKT1C_CMD_EN);
	FUNC14(1);
	FUNC3(CTRL,
		       FUNC2(CTRL) |
		       FUNC1(CTRL_RESET_FIFOS));

	FUNC3(TXPKT1C, 0);
	FUNC3(INT_EN, DSI1_INTERRUPTS_ALWAYS_ENABLED);
	return ret;
}