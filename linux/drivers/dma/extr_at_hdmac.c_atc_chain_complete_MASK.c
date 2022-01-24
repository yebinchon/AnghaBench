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
struct dma_async_tx_descriptor {int /*<<< orphan*/  cookie; } ;
struct TYPE_2__ {int /*<<< orphan*/  device; } ;
struct at_dma_chan {int /*<<< orphan*/  free_list; TYPE_1__ chan_common; } ;
struct at_dma {int /*<<< orphan*/  memset_pool; } ;
struct at_desc {int memset_buffer; int /*<<< orphan*/  desc_node; int /*<<< orphan*/  tx_list; int /*<<< orphan*/  memset_paddr; int /*<<< orphan*/  memset_vaddr; struct dma_async_tx_descriptor txd; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct at_dma_chan*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct dma_async_tx_descriptor*) ; 
 int /*<<< orphan*/  FUNC4 (struct dma_async_tx_descriptor*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct dma_async_tx_descriptor*) ; 
 int /*<<< orphan*/  FUNC7 (struct dma_async_tx_descriptor*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 struct at_dma* FUNC10 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC11(struct at_dma_chan *atchan, struct at_desc *desc)
{
	struct dma_async_tx_descriptor	*txd = &desc->txd;
	struct at_dma			*atdma = FUNC10(atchan->chan_common.device);

	FUNC2(FUNC1(&atchan->chan_common),
		"descriptor %u complete\n", txd->cookie);

	/* mark the descriptor as complete for non cyclic cases only */
	if (!FUNC0(atchan))
		FUNC3(txd);

	/* If the transfer was a memset, free our temporary buffer */
	if (desc->memset_buffer) {
		FUNC5(atdma->memset_pool, desc->memset_vaddr,
			      desc->memset_paddr);
		desc->memset_buffer = false;
	}

	/* move children to free_list */
	FUNC9(&desc->tx_list, &atchan->free_list);
	/* move myself to free_list */
	FUNC8(&desc->desc_node, &atchan->free_list);

	FUNC4(txd);
	/* for cyclic transfers,
	 * no need to replay callback function while stopping */
	if (!FUNC0(atchan)) {
		/*
		 * The API requires that no submissions are done from a
		 * callback, so we don't need to drop the lock here
		 */
		FUNC7(txd, NULL);
	}

	FUNC6(txd);
}