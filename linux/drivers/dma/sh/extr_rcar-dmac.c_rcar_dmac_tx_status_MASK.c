#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {TYPE_1__* running; } ;
struct rcar_dmac_chan {int /*<<< orphan*/  lock; TYPE_2__ desc; } ;
struct dma_tx_state {int dummy; } ;
struct dma_chan {int dummy; } ;
typedef  enum dma_status { ____Placeholder_dma_status } dma_status ;
typedef  int /*<<< orphan*/  dma_cookie_t ;
struct TYPE_3__ {int cyclic; } ;

/* Variables and functions */
 int DMA_COMPLETE ; 
 int FUNC0 (struct dma_chan*,int /*<<< orphan*/ ,struct dma_tx_state*) ; 
 int /*<<< orphan*/  FUNC1 (struct dma_tx_state*,unsigned int) ; 
 unsigned int FUNC2 (struct rcar_dmac_chan*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 struct rcar_dmac_chan* FUNC5 (struct dma_chan*) ; 

__attribute__((used)) static enum dma_status FUNC6(struct dma_chan *chan,
					   dma_cookie_t cookie,
					   struct dma_tx_state *txstate)
{
	struct rcar_dmac_chan *rchan = FUNC5(chan);
	enum dma_status status;
	unsigned long flags;
	unsigned int residue;
	bool cyclic;

	status = FUNC0(chan, cookie, txstate);
	if (status == DMA_COMPLETE || !txstate)
		return status;

	FUNC3(&rchan->lock, flags);
	residue = FUNC2(rchan, cookie);
	cyclic = rchan->desc.running ? rchan->desc.running->cyclic : false;
	FUNC4(&rchan->lock, flags);

	/* if there's no residue, the cookie is complete */
	if (!residue && !cyclic)
		return DMA_COMPLETE;

	FUNC1(txstate, residue);

	return status;
}