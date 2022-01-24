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
struct dma_async_tx_descriptor {int /*<<< orphan*/  cookie; } ;
struct txx9dmac_desc {int /*<<< orphan*/  desc_node; int /*<<< orphan*/  tx_list; struct dma_async_tx_descriptor txd; } ;
struct txx9dmac_chan {int /*<<< orphan*/  free_list; int /*<<< orphan*/  chan; } ;
struct dmaengine_desc_callback {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,struct txx9dmac_desc*) ; 
 int /*<<< orphan*/  FUNC2 (struct dma_async_tx_descriptor*) ; 
 int /*<<< orphan*/  FUNC3 (struct dma_async_tx_descriptor*) ; 
 int /*<<< orphan*/  FUNC4 (struct dma_async_tx_descriptor*) ; 
 int /*<<< orphan*/  FUNC5 (struct dmaengine_desc_callback*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct dma_async_tx_descriptor*,struct dmaengine_desc_callback*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (struct txx9dmac_chan*,struct txx9dmac_desc*) ; 

__attribute__((used)) static void
FUNC10(struct txx9dmac_chan *dc,
			     struct txx9dmac_desc *desc)
{
	struct dmaengine_desc_callback cb;
	struct dma_async_tx_descriptor *txd = &desc->txd;

	FUNC1(FUNC0(&dc->chan), "descriptor %u %p complete\n",
		 txd->cookie, desc);

	FUNC2(txd);
	FUNC6(txd, &cb);

	FUNC9(dc, desc);
	FUNC8(&desc->tx_list, &dc->free_list);
	FUNC7(&desc->desc_node, &dc->free_list);

	FUNC3(txd);
	/*
	 * The API requires that no submissions are done from a
	 * callback, so we don't need to drop the lock here
	 */
	FUNC5(&cb, NULL);
	FUNC4(txd);
}