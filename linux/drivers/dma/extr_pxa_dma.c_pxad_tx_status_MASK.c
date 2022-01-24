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
struct pxad_chan {scalar_t__ bus_error; } ;
struct dma_tx_state {int dummy; } ;
struct dma_chan {int dummy; } ;
typedef  enum dma_status { ____Placeholder_dma_status } dma_status ;
typedef  scalar_t__ dma_cookie_t ;

/* Variables and functions */
 int DMA_ERROR ; 
 int FUNC0 (struct dma_chan*,scalar_t__,struct dma_tx_state*) ; 
 int /*<<< orphan*/  FUNC1 (struct dma_tx_state*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct pxad_chan*,scalar_t__) ; 
 struct pxad_chan* FUNC4 (struct dma_chan*) ; 

__attribute__((used)) static enum dma_status FUNC5(struct dma_chan *dchan,
				      dma_cookie_t cookie,
				      struct dma_tx_state *txstate)
{
	struct pxad_chan *chan = FUNC4(dchan);
	enum dma_status ret;

	if (cookie == chan->bus_error)
		return DMA_ERROR;

	ret = FUNC0(dchan, cookie, txstate);
	if (FUNC2(txstate && (ret != DMA_ERROR)))
		FUNC1(txstate, FUNC3(chan, cookie));

	return ret;
}