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
struct fsldma_chan {int dummy; } ;
struct dma_async_tx_descriptor {unsigned long flags; int /*<<< orphan*/  cookie; int /*<<< orphan*/  phys; } ;
struct fsl_desc_sw {int /*<<< orphan*/  tx_list; struct dma_async_tx_descriptor async_tx; int /*<<< orphan*/  node; int /*<<< orphan*/  hw; } ;
struct dma_chan {int dummy; } ;
typedef  size_t dma_addr_t ;

/* Variables and functions */
 int /*<<< orphan*/  EBUSY ; 
 scalar_t__ FSL_DMA_BCR_MAX_CNT ; 
 int /*<<< orphan*/  FUNC0 (struct dma_async_tx_descriptor*) ; 
 int /*<<< orphan*/  FUNC1 (struct fsldma_chan*,char*,int /*<<< orphan*/ ) ; 
 struct fsl_desc_sw* FUNC2 (struct fsldma_chan*) ; 
 int /*<<< orphan*/  FUNC3 (struct fsldma_chan*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 size_t FUNC5 (size_t,size_t) ; 
 int /*<<< orphan*/  msg_ld_oom ; 
 int /*<<< orphan*/  FUNC6 (struct fsldma_chan*,int /*<<< orphan*/ *,size_t) ; 
 int /*<<< orphan*/  FUNC7 (struct fsldma_chan*,int /*<<< orphan*/ *,size_t) ; 
 int /*<<< orphan*/  FUNC8 (struct fsldma_chan*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct fsldma_chan*,int /*<<< orphan*/ *,size_t) ; 
 int /*<<< orphan*/  FUNC10 (struct fsldma_chan*,struct fsl_desc_sw*) ; 
 struct fsldma_chan* FUNC11 (struct dma_chan*) ; 

__attribute__((used)) static struct dma_async_tx_descriptor *
FUNC12(struct dma_chan *dchan,
	dma_addr_t dma_dst, dma_addr_t dma_src,
	size_t len, unsigned long flags)
{
	struct fsldma_chan *chan;
	struct fsl_desc_sw *first = NULL, *prev = NULL, *new;
	size_t copy;

	if (!dchan)
		return NULL;

	if (!len)
		return NULL;

	chan = FUNC11(dchan);

	do {

		/* Allocate the link descriptor from DMA pool */
		new = FUNC2(chan);
		if (!new) {
			FUNC1(chan, "%s\n", msg_ld_oom);
			goto fail;
		}

		copy = FUNC5(len, (size_t)FSL_DMA_BCR_MAX_CNT);

		FUNC6(chan, &new->hw, copy);
		FUNC9(chan, &new->hw, dma_src);
		FUNC7(chan, &new->hw, dma_dst);

		if (!first)
			first = new;
		else
			FUNC8(chan, &prev->hw, new->async_tx.phys);

		new->async_tx.cookie = 0;
		FUNC0(&new->async_tx);

		prev = new;
		len -= copy;
		dma_src += copy;
		dma_dst += copy;

		/* Insert the link descriptor to the LD ring */
		FUNC4(&new->node, &first->tx_list);
	} while (len);

	new->async_tx.flags = flags; /* client is in control of this ack */
	new->async_tx.cookie = -EBUSY;

	/* Set End-of-link to the last link descriptor of new list */
	FUNC10(chan, new);

	return &first->async_tx;

fail:
	if (!first)
		return NULL;

	FUNC3(chan, &first->tx_list);
	return NULL;
}