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
struct dw_dma_chan {int /*<<< orphan*/  flags; } ;
struct dma_tx_state {int dummy; } ;
struct dma_chan {int /*<<< orphan*/  device; } ;
typedef  enum dma_status { ____Placeholder_dma_status } dma_status ;
typedef  int /*<<< orphan*/  dma_cookie_t ;

/* Variables and functions */
 int DMA_COMPLETE ; 
 int DMA_IN_PROGRESS ; 
 int DMA_PAUSED ; 
 int /*<<< orphan*/  DW_DMA_IS_PAUSED ; 
 int FUNC0 (struct dma_chan*,int /*<<< orphan*/ ,struct dma_tx_state*) ; 
 int /*<<< orphan*/  FUNC1 (struct dma_tx_state*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct dw_dma_chan*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,struct dw_dma_chan*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 struct dw_dma_chan* FUNC6 (struct dma_chan*) ; 

__attribute__((used)) static enum dma_status
FUNC7(struct dma_chan *chan,
	      dma_cookie_t cookie,
	      struct dma_tx_state *txstate)
{
	struct dw_dma_chan	*dwc = FUNC6(chan);
	enum dma_status		ret;

	ret = FUNC0(chan, cookie, txstate);
	if (ret == DMA_COMPLETE)
		return ret;

	FUNC3(FUNC5(chan->device), dwc);

	ret = FUNC0(chan, cookie, txstate);
	if (ret == DMA_COMPLETE)
		return ret;

	FUNC1(txstate, FUNC2(dwc, cookie));

	if (FUNC4(DW_DMA_IS_PAUSED, &dwc->flags) && ret == DMA_IN_PROGRESS)
		return DMA_PAUSED;

	return ret;
}