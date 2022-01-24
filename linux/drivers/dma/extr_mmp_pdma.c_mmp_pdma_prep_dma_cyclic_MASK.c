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
struct dma_async_tx_descriptor {unsigned long flags; int /*<<< orphan*/  phys; scalar_t__ cookie; } ;
struct TYPE_2__ {size_t dcmd; size_t dsadr; size_t dtadr; int /*<<< orphan*/  ddadr; } ;
struct mmp_pdma_desc_sw {int /*<<< orphan*/  tx_list; struct dma_async_tx_descriptor async_tx; TYPE_1__ desc; int /*<<< orphan*/  node; } ;
struct mmp_pdma_chan {size_t dev_addr; int dir; size_t dcmd; struct mmp_pdma_desc_sw* cyclic_first; int /*<<< orphan*/  dev; int /*<<< orphan*/  slave_config; } ;
struct dma_chan {int dummy; } ;
typedef  enum dma_transfer_direction { ____Placeholder_dma_transfer_direction } dma_transfer_direction ;
typedef  size_t dma_addr_t ;

/* Variables and functions */
 size_t DCMD_ENDIRQEN ; 
 size_t DCMD_LENGTH ; 
#define  DMA_DEV_TO_MEM 129 
#define  DMA_MEM_TO_DEV 128 
 scalar_t__ EBUSY ; 
 size_t PDMA_MAX_DESC_BYTES ; 
 int /*<<< orphan*/  FUNC0 (struct dma_async_tx_descriptor*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 struct mmp_pdma_desc_sw* FUNC3 (struct mmp_pdma_chan*) ; 
 int /*<<< orphan*/  FUNC4 (struct dma_chan*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC5 (struct mmp_pdma_chan*,int /*<<< orphan*/ *) ; 
 struct mmp_pdma_chan* FUNC6 (struct dma_chan*) ; 

__attribute__((used)) static struct dma_async_tx_descriptor *
FUNC7(struct dma_chan *dchan,
			 dma_addr_t buf_addr, size_t len, size_t period_len,
			 enum dma_transfer_direction direction,
			 unsigned long flags)
{
	struct mmp_pdma_chan *chan;
	struct mmp_pdma_desc_sw *first = NULL, *prev = NULL, *new;
	dma_addr_t dma_src, dma_dst;

	if (!dchan || !len || !period_len)
		return NULL;

	/* the buffer length must be a multiple of period_len */
	if (len % period_len != 0)
		return NULL;

	if (period_len > PDMA_MAX_DESC_BYTES)
		return NULL;

	chan = FUNC6(dchan);
	FUNC4(dchan, &chan->slave_config, direction);

	switch (direction) {
	case DMA_MEM_TO_DEV:
		dma_src = buf_addr;
		dma_dst = chan->dev_addr;
		break;
	case DMA_DEV_TO_MEM:
		dma_dst = buf_addr;
		dma_src = chan->dev_addr;
		break;
	default:
		FUNC1(chan->dev, "Unsupported direction for cyclic DMA\n");
		return NULL;
	}

	chan->dir = direction;

	do {
		/* Allocate the link descriptor from DMA pool */
		new = FUNC3(chan);
		if (!new) {
			FUNC1(chan->dev, "no memory for desc\n");
			goto fail;
		}

		new->desc.dcmd = (chan->dcmd | DCMD_ENDIRQEN |
				  (DCMD_LENGTH & period_len));
		new->desc.dsadr = dma_src;
		new->desc.dtadr = dma_dst;

		if (!first)
			first = new;
		else
			prev->desc.ddadr = new->async_tx.phys;

		new->async_tx.cookie = 0;
		FUNC0(&new->async_tx);

		prev = new;
		len -= period_len;

		if (chan->dir == DMA_MEM_TO_DEV)
			dma_src += period_len;
		else
			dma_dst += period_len;

		/* Insert the link descriptor to the LD ring */
		FUNC2(&new->node, &first->tx_list);
	} while (len);

	first->async_tx.flags = flags; /* client is in control of this ack */
	first->async_tx.cookie = -EBUSY;

	/* make the cyclic link */
	new->desc.ddadr = first->async_tx.phys;
	chan->cyclic_first = first;

	return &first->async_tx;

fail:
	if (first)
		FUNC5(chan, &first->tx_list);
	return NULL;
}