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
struct mipi_dsi_packet {int size; } ;
struct mipi_dsi_msg {int rx_len; scalar_t__ rx_buf; } ;
struct mipi_dsi_host {int dummy; } ;
struct dw_mipi_dsi {struct dw_mipi_dsi* slave; int /*<<< orphan*/  dev; } ;
typedef  int ssize_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int) ; 
 int FUNC1 (struct dw_mipi_dsi*,struct mipi_dsi_msg const*) ; 
 int FUNC2 (struct dw_mipi_dsi*,struct mipi_dsi_packet*) ; 
 int /*<<< orphan*/  FUNC3 (struct dw_mipi_dsi*,struct mipi_dsi_msg const*) ; 
 struct dw_mipi_dsi* FUNC4 (struct mipi_dsi_host*) ; 
 int FUNC5 (struct mipi_dsi_packet*,struct mipi_dsi_msg const*) ; 

__attribute__((used)) static ssize_t FUNC6(struct mipi_dsi_host *host,
					 const struct mipi_dsi_msg *msg)
{
	struct dw_mipi_dsi *dsi = FUNC4(host);
	struct mipi_dsi_packet packet;
	int ret, nb_bytes;

	ret = FUNC5(&packet, msg);
	if (ret) {
		FUNC0(dsi->dev, "failed to create packet: %d\n", ret);
		return ret;
	}

	FUNC3(dsi, msg);
	if (dsi->slave)
		FUNC3(dsi->slave, msg);

	ret = FUNC2(dsi, &packet);
	if (ret)
		return ret;
	if (dsi->slave) {
		ret = FUNC2(dsi->slave, &packet);
		if (ret)
			return ret;
	}

	if (msg->rx_buf && msg->rx_len) {
		ret = FUNC1(dsi, msg);
		if (ret)
			return ret;
		nb_bytes = msg->rx_len;
	} else {
		nb_bytes = packet.size;
	}

	return nb_bytes;
}