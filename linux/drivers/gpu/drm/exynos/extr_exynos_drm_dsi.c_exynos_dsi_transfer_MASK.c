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
struct mipi_dsi_packet {int /*<<< orphan*/  payload; scalar_t__ payload_length; int /*<<< orphan*/  header; } ;
struct exynos_dsi_transfer {int result; struct mipi_dsi_packet packet; int /*<<< orphan*/  completed; int /*<<< orphan*/  list; scalar_t__ rx_done; scalar_t__ tx_done; } ;
struct exynos_dsi {int /*<<< orphan*/  dev; int /*<<< orphan*/  transfer_lock; int /*<<< orphan*/  transfer_list; } ;

/* Variables and functions */
 int /*<<< orphan*/  DSI_XFER_TIMEOUT_MS ; 
 int ETIMEDOUT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct exynos_dsi*,struct exynos_dsi_transfer*) ; 
 int /*<<< orphan*/  FUNC2 (struct exynos_dsi*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC10(struct exynos_dsi *dsi,
					struct exynos_dsi_transfer *xfer)
{
	unsigned long flags;
	bool stopped;

	xfer->tx_done = 0;
	xfer->rx_done = 0;
	xfer->result = -ETIMEDOUT;
	FUNC3(&xfer->completed);

	FUNC7(&dsi->transfer_lock, flags);

	stopped = FUNC5(&dsi->transfer_list);
	FUNC4(&xfer->list, &dsi->transfer_list);

	FUNC8(&dsi->transfer_lock, flags);

	if (stopped)
		FUNC2(dsi);

	FUNC9(&xfer->completed,
				    FUNC6(DSI_XFER_TIMEOUT_MS));
	if (xfer->result == -ETIMEDOUT) {
		struct mipi_dsi_packet *pkt = &xfer->packet;
		FUNC1(dsi, xfer);
		FUNC0(dsi->dev, "xfer timed out: %*ph %*ph\n", 4, pkt->header,
			(int)pkt->payload_length, pkt->payload);
		return -ETIMEDOUT;
	}

	/* Also covers hardware timeout condition */
	return xfer->result;
}