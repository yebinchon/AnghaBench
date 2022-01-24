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
struct xilinx_dma_device {int /*<<< orphan*/  axi_clk; int /*<<< orphan*/  tx_clk; int /*<<< orphan*/  txs_clk; int /*<<< orphan*/  rx_clk; int /*<<< orphan*/  rxs_clk; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC1(struct xilinx_dma_device *xdev)
{
	FUNC0(xdev->rxs_clk);
	FUNC0(xdev->rx_clk);
	FUNC0(xdev->txs_clk);
	FUNC0(xdev->tx_clk);
	FUNC0(xdev->axi_clk);
}