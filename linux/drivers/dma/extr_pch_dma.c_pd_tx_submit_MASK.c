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
struct pch_dma_desc {int /*<<< orphan*/  desc_node; } ;
struct pch_dma_chan {int /*<<< orphan*/  lock; int /*<<< orphan*/  queue; int /*<<< orphan*/  active_list; } ;
struct dma_async_tx_descriptor {int /*<<< orphan*/  chan; } ;
typedef  int /*<<< orphan*/  dma_cookie_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct pch_dma_chan*,struct pch_dma_desc*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 struct pch_dma_chan* FUNC5 (int /*<<< orphan*/ ) ; 
 struct pch_dma_desc* FUNC6 (struct dma_async_tx_descriptor*) ; 

__attribute__((used)) static dma_cookie_t FUNC7(struct dma_async_tx_descriptor *txd)
{
	struct pch_dma_desc *desc = FUNC6(txd);
	struct pch_dma_chan *pd_chan = FUNC5(txd->chan);

	FUNC3(&pd_chan->lock);

	if (FUNC1(&pd_chan->active_list)) {
		FUNC0(&desc->desc_node, &pd_chan->active_list);
		FUNC2(pd_chan, desc);
	} else {
		FUNC0(&desc->desc_node, &pd_chan->queue);
	}

	FUNC4(&pd_chan->lock);
	return 0;
}