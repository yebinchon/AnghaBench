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
struct xgene_dma_desc_sw {int /*<<< orphan*/  tx_list; } ;
struct xgene_dma_chan {int /*<<< orphan*/  lock; int /*<<< orphan*/  ld_pending; } ;
struct dma_async_tx_descriptor {int /*<<< orphan*/  chan; } ;
typedef  int /*<<< orphan*/  dma_cookie_t ;

/* Variables and functions */
 int /*<<< orphan*/  EINVAL ; 
 int /*<<< orphan*/  FUNC0 (struct dma_async_tx_descriptor*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 struct xgene_dma_chan* FUNC4 (int /*<<< orphan*/ ) ; 
 struct xgene_dma_desc_sw* FUNC5 (struct dma_async_tx_descriptor*) ; 
 scalar_t__ FUNC6 (int) ; 

__attribute__((used)) static dma_cookie_t FUNC7(struct dma_async_tx_descriptor *tx)
{
	struct xgene_dma_desc_sw *desc;
	struct xgene_dma_chan *chan;
	dma_cookie_t cookie;

	if (FUNC6(!tx))
		return -EINVAL;

	chan = FUNC4(tx->chan);
	desc = FUNC5(tx);

	FUNC2(&chan->lock);

	cookie = FUNC0(tx);

	/* Add this transaction list onto the tail of the pending queue */
	FUNC1(&desc->tx_list, &chan->ld_pending);

	FUNC3(&chan->lock);

	return cookie;
}