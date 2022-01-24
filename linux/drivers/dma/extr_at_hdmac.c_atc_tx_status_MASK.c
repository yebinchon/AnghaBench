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
struct dma_tx_state {int dummy; } ;
struct dma_chan {int dummy; } ;
struct at_dma_chan {int /*<<< orphan*/  lock; } ;
typedef  enum dma_status { ____Placeholder_dma_status } dma_status ;
typedef  int /*<<< orphan*/  dma_cookie_t ;

/* Variables and functions */
 int DMA_COMPLETE ; 
 int DMA_ERROR ; 
 int FUNC0 (struct dma_chan*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct dma_chan*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,...) ; 
 int FUNC3 (struct dma_chan*,int /*<<< orphan*/ ,struct dma_tx_state*) ; 
 int /*<<< orphan*/  FUNC4 (struct dma_tx_state*,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 
 struct at_dma_chan* FUNC7 (struct dma_chan*) ; 
 scalar_t__ FUNC8 (int) ; 

__attribute__((used)) static enum dma_status
FUNC9(struct dma_chan *chan,
		dma_cookie_t cookie,
		struct dma_tx_state *txstate)
{
	struct at_dma_chan	*atchan = FUNC7(chan);
	unsigned long		flags;
	enum dma_status		ret;
	int bytes = 0;

	ret = FUNC3(chan, cookie, txstate);
	if (ret == DMA_COMPLETE)
		return ret;
	/*
	 * There's no point calculating the residue if there's
	 * no txstate to store the value.
	 */
	if (!txstate)
		return DMA_ERROR;

	FUNC5(&atchan->lock, flags);

	/*  Get number of bytes left in the active transactions */
	bytes = FUNC0(chan, cookie);

	FUNC6(&atchan->lock, flags);

	if (FUNC8(bytes < 0)) {
		FUNC2(FUNC1(chan), "get residual bytes error\n");
		return DMA_ERROR;
	} else {
		FUNC4(txstate, bytes);
	}

	FUNC2(FUNC1(chan), "tx_status %d: cookie = %d residue = %d\n",
		 ret, cookie, bytes);

	return ret;
}