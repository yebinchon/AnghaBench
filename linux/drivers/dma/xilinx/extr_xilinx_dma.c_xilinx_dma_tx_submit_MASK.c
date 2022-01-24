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
struct xilinx_dma_tx_descriptor {scalar_t__ cyclic; } ;
struct xilinx_dma_chan {int cyclic; int /*<<< orphan*/  lock; scalar_t__ err; } ;
struct dma_async_tx_descriptor {int /*<<< orphan*/  chan; } ;
typedef  int dma_cookie_t ;

/* Variables and functions */
 int EBUSY ; 
 int /*<<< orphan*/  FUNC0 (struct xilinx_dma_chan*,struct xilinx_dma_tx_descriptor*) ; 
 int FUNC1 (struct dma_async_tx_descriptor*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 struct xilinx_dma_tx_descriptor* FUNC4 (struct dma_async_tx_descriptor*) ; 
 struct xilinx_dma_chan* FUNC5 (int /*<<< orphan*/ ) ; 
 int FUNC6 (struct xilinx_dma_chan*) ; 
 int /*<<< orphan*/  FUNC7 (struct xilinx_dma_chan*,struct xilinx_dma_tx_descriptor*) ; 

__attribute__((used)) static dma_cookie_t FUNC8(struct dma_async_tx_descriptor *tx)
{
	struct xilinx_dma_tx_descriptor *desc = FUNC4(tx);
	struct xilinx_dma_chan *chan = FUNC5(tx->chan);
	dma_cookie_t cookie;
	unsigned long flags;
	int err;

	if (chan->cyclic) {
		FUNC7(chan, desc);
		return -EBUSY;
	}

	if (chan->err) {
		/*
		 * If reset fails, need to hard reset the system.
		 * Channel is no longer functional
		 */
		err = FUNC6(chan);
		if (err < 0)
			return err;
	}

	FUNC2(&chan->lock, flags);

	cookie = FUNC1(tx);

	/* Put this transaction onto the tail of the pending queue */
	FUNC0(chan, desc);

	if (desc->cyclic)
		chan->cyclic = true;

	FUNC3(&chan->lock, flags);

	return cookie;
}