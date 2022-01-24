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
typedef  int u16 ;
typedef  int /*<<< orphan*/  tx ;
struct mipi_dsi_msg {int tx_len; int* tx_buf; int /*<<< orphan*/  type; int /*<<< orphan*/  channel; } ;
struct mipi_dsi_device {int /*<<< orphan*/  channel; } ;

/* Variables and functions */
 int /*<<< orphan*/  MIPI_DSI_SET_MAXIMUM_RETURN_PACKET_SIZE ; 
 int FUNC0 (struct mipi_dsi_device*,struct mipi_dsi_msg*) ; 

int FUNC1(struct mipi_dsi_device *dsi,
					    u16 value)
{
	u8 tx[2] = { value & 0xff, value >> 8 };
	struct mipi_dsi_msg msg = {
		.channel = dsi->channel,
		.type = MIPI_DSI_SET_MAXIMUM_RETURN_PACKET_SIZE,
		.tx_len = sizeof(tx),
		.tx_buf = tx,
	};
	int ret = FUNC0(dsi, &msg);

	return (ret < 0) ? ret : 0;
}