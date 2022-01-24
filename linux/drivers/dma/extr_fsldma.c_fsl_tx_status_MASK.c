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
struct fsldma_chan {int /*<<< orphan*/  desc_lock; } ;
struct dma_tx_state {int dummy; } ;
struct dma_chan {int dummy; } ;
typedef  enum dma_status { ____Placeholder_dma_status } dma_status ;
typedef  int /*<<< orphan*/  dma_cookie_t ;

/* Variables and functions */
 int DMA_COMPLETE ; 
 int FUNC0 (struct dma_chan*,int /*<<< orphan*/ ,struct dma_tx_state*) ; 
 int /*<<< orphan*/  FUNC1 (struct fsldma_chan*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 struct fsldma_chan* FUNC4 (struct dma_chan*) ; 

__attribute__((used)) static enum dma_status FUNC5(struct dma_chan *dchan,
					dma_cookie_t cookie,
					struct dma_tx_state *txstate)
{
	struct fsldma_chan *chan = FUNC4(dchan);
	enum dma_status ret;

	ret = FUNC0(dchan, cookie, txstate);
	if (ret == DMA_COMPLETE)
		return ret;

	FUNC2(&chan->desc_lock);
	FUNC1(chan);
	FUNC3(&chan->desc_lock);

	return FUNC0(dchan, cookie, txstate);
}