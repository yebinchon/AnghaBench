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
struct txx9dmac_chan {int /*<<< orphan*/  lock; } ;
struct dma_tx_state {int dummy; } ;
struct dma_chan {int dummy; } ;
typedef  enum dma_status { ____Placeholder_dma_status } dma_status ;
typedef  int /*<<< orphan*/  dma_cookie_t ;

/* Variables and functions */
 int DMA_COMPLETE ; 
 int FUNC0 (struct dma_chan*,int /*<<< orphan*/ ,struct dma_tx_state*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 struct txx9dmac_chan* FUNC3 (struct dma_chan*) ; 
 int /*<<< orphan*/  FUNC4 (struct txx9dmac_chan*) ; 

__attribute__((used)) static enum dma_status
FUNC5(struct dma_chan *chan, dma_cookie_t cookie,
		   struct dma_tx_state *txstate)
{
	struct txx9dmac_chan *dc = FUNC3(chan);
	enum dma_status ret;

	ret = FUNC0(chan, cookie, txstate);
	if (ret == DMA_COMPLETE)
		return DMA_COMPLETE;

	FUNC1(&dc->lock);
	FUNC4(dc);
	FUNC2(&dc->lock);

	return FUNC0(chan, cookie, txstate);
}