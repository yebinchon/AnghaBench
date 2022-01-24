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
typedef  int u32 ;
struct mipi_dsi_packet {int payload_length; int /*<<< orphan*/  const* header; int /*<<< orphan*/ * payload; } ;
struct dw_mipi_dsi {int /*<<< orphan*/  dev; scalar_t__ base; } ;
typedef  scalar_t__ __le32 ;

/* Variables and functions */
 int /*<<< orphan*/  CMD_PKT_STATUS_TIMEOUT_US ; 
 scalar_t__ DSI_CMD_PKT_STATUS ; 
 int /*<<< orphan*/  DSI_GEN_PLD_DATA ; 
 int GEN_PLD_W_FULL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct dw_mipi_dsi*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct dw_mipi_dsi*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__*,int /*<<< orphan*/  const*,int) ; 
 int FUNC5 (scalar_t__,int,int,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(struct dw_mipi_dsi *dsi,
			     const struct mipi_dsi_packet *packet)
{
	const u8 *tx_buf = packet->payload;
	int len = packet->payload_length, pld_data_bytes = sizeof(u32), ret;
	__le32 word;
	u32 val;

	while (len) {
		if (len < pld_data_bytes) {
			word = 0;
			FUNC4(&word, tx_buf, len);
			FUNC1(dsi, DSI_GEN_PLD_DATA, FUNC3(word));
			len = 0;
		} else {
			FUNC4(&word, tx_buf, pld_data_bytes);
			FUNC1(dsi, DSI_GEN_PLD_DATA, FUNC3(word));
			tx_buf += pld_data_bytes;
			len -= pld_data_bytes;
		}

		ret = FUNC5(dsi->base + DSI_CMD_PKT_STATUS,
					 val, !(val & GEN_PLD_W_FULL), 1000,
					 CMD_PKT_STATUS_TIMEOUT_US);
		if (ret) {
			FUNC0(dsi->dev,
				"failed to get available write payload FIFO\n");
			return ret;
		}
	}

	word = 0;
	FUNC4(&word, packet->header, sizeof(packet->header));
	return FUNC2(dsi, FUNC3(word));
}