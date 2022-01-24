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
struct mtk_chan {int /*<<< orphan*/  rx_status; } ;
struct dma_tx_state {int dummy; } ;
struct dma_chan {int dummy; } ;
typedef  enum dma_status { ____Placeholder_dma_status } dma_status ;
typedef  int /*<<< orphan*/  dma_cookie_t ;

/* Variables and functions */
 int FUNC0 (struct dma_chan*,int /*<<< orphan*/ ,struct dma_tx_state*) ; 
 int /*<<< orphan*/  FUNC1 (struct dma_tx_state*,int /*<<< orphan*/ ) ; 
 struct mtk_chan* FUNC2 (struct dma_chan*) ; 

__attribute__((used)) static enum dma_status FUNC3(struct dma_chan *chan,
					 dma_cookie_t cookie,
					 struct dma_tx_state *txstate)
{
	struct mtk_chan *c = FUNC2(chan);
	enum dma_status ret;

	ret = FUNC0(chan, cookie, txstate);
	if (!txstate)
		return ret;

	FUNC1(txstate, c->rx_status);

	return ret;
}