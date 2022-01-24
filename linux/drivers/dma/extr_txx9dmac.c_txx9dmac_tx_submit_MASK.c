#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int /*<<< orphan*/  cookie; } ;
struct txx9dmac_desc {int /*<<< orphan*/  desc_node; TYPE_1__ txd; } ;
struct txx9dmac_chan {int /*<<< orphan*/  lock; int /*<<< orphan*/  queue; } ;
struct dma_async_tx_descriptor {int /*<<< orphan*/  chan; } ;
typedef  int /*<<< orphan*/  dma_cookie_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,struct txx9dmac_desc*) ; 
 int /*<<< orphan*/  FUNC2 (struct dma_async_tx_descriptor*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 struct txx9dmac_chan* FUNC6 (int /*<<< orphan*/ ) ; 
 struct txx9dmac_desc* FUNC7 (struct dma_async_tx_descriptor*) ; 

__attribute__((used)) static dma_cookie_t FUNC8(struct dma_async_tx_descriptor *tx)
{
	struct txx9dmac_desc *desc = FUNC7(tx);
	struct txx9dmac_chan *dc = FUNC6(tx->chan);
	dma_cookie_t cookie;

	FUNC4(&dc->lock);
	cookie = FUNC2(tx);

	FUNC1(FUNC0(tx->chan), "tx_submit: queued %u %p\n",
		 desc->txd.cookie, desc);

	FUNC3(&desc->desc_node, &dc->queue);
	FUNC5(&dc->lock);

	return cookie;
}