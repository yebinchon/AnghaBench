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
struct dma_slave_config {int /*<<< orphan*/  src_addr_width; int /*<<< orphan*/  dst_addr_width; } ;
struct dma_chan {struct at_dma_slave* private; } ;
struct dma_async_tx_descriptor {int /*<<< orphan*/  cookie; int /*<<< orphan*/  phys; } ;
struct at_dma_slave {int dummy; } ;
struct at_dma_chan {int /*<<< orphan*/  status; struct dma_slave_config dma_sconfig; } ;
struct TYPE_2__ {int /*<<< orphan*/  dscr; } ;
struct at_desc {size_t total_len; struct dma_async_tx_descriptor txd; TYPE_1__ lli; } ;
typedef  enum dma_transfer_direction { ____Placeholder_dma_transfer_direction } dma_transfer_direction ;
typedef  int /*<<< orphan*/  dma_addr_t ;

/* Variables and functions */
 int /*<<< orphan*/  ATC_IS_CYCLIC ; 
 int DMA_MEM_TO_DEV ; 
 int /*<<< orphan*/  EBUSY ; 
 int /*<<< orphan*/  FUNC0 (struct at_desc**,struct at_desc**,struct at_desc*) ; 
 struct at_desc* FUNC1 (struct at_dma_chan*) ; 
 int /*<<< orphan*/  FUNC2 (struct at_dma_chan*,struct at_desc*) ; 
 scalar_t__ FUNC3 (unsigned int,int /*<<< orphan*/ ,size_t) ; 
 scalar_t__ FUNC4 (struct dma_chan*,struct at_desc*,unsigned int,int /*<<< orphan*/ ,unsigned int,size_t,int) ; 
 int /*<<< orphan*/  FUNC5 (struct dma_chan*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 unsigned int FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,char*,char*,int /*<<< orphan*/ *,unsigned int,size_t,size_t) ; 
 int /*<<< orphan*/  FUNC11 (int) ; 
 unsigned long FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 struct at_dma_chan* FUNC13 (struct dma_chan*) ; 
 scalar_t__ FUNC14 (int) ; 

__attribute__((used)) static struct dma_async_tx_descriptor *
FUNC15(struct dma_chan *chan, dma_addr_t buf_addr, size_t buf_len,
		size_t period_len, enum dma_transfer_direction direction,
		unsigned long flags)
{
	struct at_dma_chan	*atchan = FUNC13(chan);
	struct at_dma_slave	*atslave = chan->private;
	struct dma_slave_config	*sconfig = &atchan->dma_sconfig;
	struct at_desc		*first = NULL;
	struct at_desc		*prev = NULL;
	unsigned long		was_cyclic;
	unsigned int		reg_width;
	unsigned int		periods = buf_len / period_len;
	unsigned int		i;

	FUNC10(FUNC5(chan), "prep_dma_cyclic: %s buf@%pad - %d (%d/%d)\n",
			direction == DMA_MEM_TO_DEV ? "TO DEVICE" : "FROM DEVICE",
			&buf_addr,
			periods, buf_len, period_len);

	if (FUNC14(!atslave || !buf_len || !period_len)) {
		FUNC8(FUNC5(chan), "prep_dma_cyclic: length is zero!\n");
		return NULL;
	}

	was_cyclic = FUNC12(ATC_IS_CYCLIC, &atchan->status);
	if (was_cyclic) {
		FUNC8(FUNC5(chan), "prep_dma_cyclic: channel in use!\n");
		return NULL;
	}

	if (FUNC14(!FUNC11(direction)))
		goto err_out;

	if (direction == DMA_MEM_TO_DEV)
		reg_width = FUNC7(sconfig->dst_addr_width);
	else
		reg_width = FUNC7(sconfig->src_addr_width);

	/* Check for too big/unaligned periods and unaligned DMA buffer */
	if (FUNC3(reg_width, buf_addr, period_len))
		goto err_out;

	/* build cyclic linked list */
	for (i = 0; i < periods; i++) {
		struct at_desc	*desc;

		desc = FUNC1(atchan);
		if (!desc)
			goto err_desc_get;

		if (FUNC4(chan, desc, i, buf_addr,
					     reg_width, period_len, direction))
			goto err_desc_get;

		FUNC0(&first, &prev, desc);
	}

	/* lets make a cyclic list */
	prev->lli.dscr = first->txd.phys;

	/* First descriptor of the chain embedds additional information */
	first->txd.cookie = -EBUSY;
	first->total_len = buf_len;

	return &first->txd;

err_desc_get:
	FUNC9(FUNC5(chan), "not enough descriptors available\n");
	FUNC2(atchan, first);
err_out:
	FUNC6(ATC_IS_CYCLIC, &atchan->status);
	return NULL;
}