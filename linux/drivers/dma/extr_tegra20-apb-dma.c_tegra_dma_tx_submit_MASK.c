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
struct tegra_dma_desc {int /*<<< orphan*/  tx_list; int /*<<< orphan*/  txd; int /*<<< orphan*/  dma_status; } ;
struct tegra_dma_channel {int /*<<< orphan*/  lock; int /*<<< orphan*/  pending_sg_req; } ;
struct dma_async_tx_descriptor {int /*<<< orphan*/  chan; } ;
typedef  int /*<<< orphan*/  dma_cookie_t ;

/* Variables and functions */
 int /*<<< orphan*/  DMA_IN_PROGRESS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 struct tegra_dma_channel* FUNC4 (int /*<<< orphan*/ ) ; 
 struct tegra_dma_desc* FUNC5 (struct dma_async_tx_descriptor*) ; 

__attribute__((used)) static dma_cookie_t FUNC6(struct dma_async_tx_descriptor *txd)
{
	struct tegra_dma_desc *dma_desc = FUNC5(txd);
	struct tegra_dma_channel *tdc = FUNC4(txd->chan);
	unsigned long flags;
	dma_cookie_t cookie;

	FUNC2(&tdc->lock, flags);
	dma_desc->dma_status = DMA_IN_PROGRESS;
	cookie = FUNC0(&dma_desc->txd);
	FUNC1(&dma_desc->tx_list, &tdc->pending_sg_req);
	FUNC3(&tdc->lock, flags);
	return cookie;
}