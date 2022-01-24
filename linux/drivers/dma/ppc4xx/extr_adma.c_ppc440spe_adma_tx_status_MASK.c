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
struct ppc440spe_adma_chan {int dummy; } ;
struct dma_tx_state {int dummy; } ;
struct dma_chan {int dummy; } ;
typedef  enum dma_status { ____Placeholder_dma_status } dma_status ;
typedef  int /*<<< orphan*/  dma_cookie_t ;

/* Variables and functions */
 int DMA_COMPLETE ; 
 int FUNC0 (struct dma_chan*,int /*<<< orphan*/ ,struct dma_tx_state*) ; 
 int /*<<< orphan*/  FUNC1 (struct ppc440spe_adma_chan*) ; 
 struct ppc440spe_adma_chan* FUNC2 (struct dma_chan*) ; 

__attribute__((used)) static enum dma_status FUNC3(struct dma_chan *chan,
			dma_cookie_t cookie, struct dma_tx_state *txstate)
{
	struct ppc440spe_adma_chan *ppc440spe_chan;
	enum dma_status ret;

	ppc440spe_chan = FUNC2(chan);
	ret = FUNC0(chan, cookie, txstate);
	if (ret == DMA_COMPLETE)
		return ret;

	FUNC1(ppc440spe_chan);

	return FUNC0(chan, cookie, txstate);
}