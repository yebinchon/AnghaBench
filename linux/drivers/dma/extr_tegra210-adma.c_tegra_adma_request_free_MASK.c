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
struct TYPE_2__ {int /*<<< orphan*/  chan; } ;
struct tegra_adma_chan {int sreq_reserved; int sreq_dir; TYPE_1__ vc; int /*<<< orphan*/  sreq_index; struct tegra_adma* tdma; } ;
struct tegra_adma {int /*<<< orphan*/  dev; int /*<<< orphan*/  rx_requests_reserved; int /*<<< orphan*/  tx_requests_reserved; } ;

/* Variables and functions */
#define  DMA_DEV_TO_MEM 129 
#define  DMA_MEM_TO_DEV 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC3(struct tegra_adma_chan *tdc)
{
	struct tegra_adma *tdma = tdc->tdma;

	if (!tdc->sreq_reserved)
		return;

	switch (tdc->sreq_dir) {
	case DMA_MEM_TO_DEV:
		FUNC0(tdc->sreq_index, &tdma->tx_requests_reserved);
		break;

	case DMA_DEV_TO_MEM:
		FUNC0(tdc->sreq_index, &tdma->rx_requests_reserved);
		break;

	default:
		FUNC1(tdma->dev, "channel %s has invalid transfer type\n",
			 FUNC2(&tdc->vc.chan));
		return;
	}

	tdc->sreq_reserved = false;
}