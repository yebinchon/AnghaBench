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
struct ep93xx_dma_desc {size_t size; struct dma_async_tx_descriptor txd; int /*<<< orphan*/  tx_list; int /*<<< orphan*/  node; void* dst_addr; void* src_addr; } ;
struct ep93xx_dma_chan {void* runtime_addr; int /*<<< orphan*/  slave_config; int /*<<< orphan*/  flags; TYPE_1__* edma; } ;
struct dma_chan {int dummy; } ;
typedef  enum dma_transfer_direction { ____Placeholder_dma_transfer_direction } dma_transfer_direction ;
typedef  void* dma_addr_t ;
struct TYPE_2__ {int /*<<< orphan*/  m2m; } ;

/* Variables and functions */
 size_t DMA_MAX_CHAN_BYTES ; 
 int DMA_MEM_TO_DEV ; 
 int /*<<< orphan*/  EBUSY ; 
 int /*<<< orphan*/  EP93XX_DMA_IS_CYCLIC ; 
 int /*<<< orphan*/  FUNC0 (struct ep93xx_dma_chan*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,...) ; 
 int FUNC2 (struct dma_chan*) ; 
 struct ep93xx_dma_desc* FUNC3 (struct ep93xx_dma_chan*) ; 
 int /*<<< orphan*/  FUNC4 (struct ep93xx_dma_chan*,struct ep93xx_dma_desc*) ; 
 int /*<<< orphan*/  FUNC5 (struct dma_chan*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 struct ep93xx_dma_chan* FUNC8 (struct dma_chan*) ; 

__attribute__((used)) static struct dma_async_tx_descriptor *
FUNC9(struct dma_chan *chan, dma_addr_t dma_addr,
			   size_t buf_len, size_t period_len,
			   enum dma_transfer_direction dir, unsigned long flags)
{
	struct ep93xx_dma_chan *edmac = FUNC8(chan);
	struct ep93xx_dma_desc *desc, *first;
	size_t offset = 0;

	if (!edmac->edma->m2m && dir != FUNC2(chan)) {
		FUNC1(FUNC0(edmac),
			 "channel was configured with different direction\n");
		return NULL;
	}

	if (FUNC7(EP93XX_DMA_IS_CYCLIC, &edmac->flags)) {
		FUNC1(FUNC0(edmac),
			 "channel is already used for cyclic transfers\n");
		return NULL;
	}

	if (period_len > DMA_MAX_CHAN_BYTES) {
		FUNC1(FUNC0(edmac), "too big period length %zu\n",
			 period_len);
		return NULL;
	}

	FUNC5(chan, dir, &edmac->slave_config);

	/* Split the buffer into period size chunks */
	first = NULL;
	for (offset = 0; offset < buf_len; offset += period_len) {
		desc = FUNC3(edmac);
		if (!desc) {
			FUNC1(FUNC0(edmac), "couldn't get descriptor\n");
			goto fail;
		}

		if (dir == DMA_MEM_TO_DEV) {
			desc->src_addr = dma_addr + offset;
			desc->dst_addr = edmac->runtime_addr;
		} else {
			desc->src_addr = edmac->runtime_addr;
			desc->dst_addr = dma_addr + offset;
		}

		desc->size = period_len;

		if (!first)
			first = desc;
		else
			FUNC6(&desc->node, &first->tx_list);
	}

	first->txd.cookie = -EBUSY;

	return &first->txd;

fail:
	FUNC4(edmac, first);
	return NULL;
}