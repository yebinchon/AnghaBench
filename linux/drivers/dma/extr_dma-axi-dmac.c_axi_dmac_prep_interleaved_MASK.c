#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct dma_interleaved_template {int frame_size; scalar_t__ dir; int numf; TYPE_2__* sgl; int /*<<< orphan*/  dst_start; int /*<<< orphan*/  src_start; int /*<<< orphan*/  dst_inc; int /*<<< orphan*/  src_inc; } ;
struct dma_chan {int dummy; } ;
struct dma_async_tx_descriptor {int dummy; } ;
struct axi_dmac_desc {int cyclic; int /*<<< orphan*/  vdesc; TYPE_1__* sg; } ;
struct axi_dmac_chan {scalar_t__ direction; size_t max_length; int /*<<< orphan*/  vchan; scalar_t__ hw_2d; } ;
struct TYPE_5__ {int size; } ;
struct TYPE_4__ {size_t src_stride; size_t dest_stride; size_t x_len; int y_len; int /*<<< orphan*/  dest_addr; int /*<<< orphan*/  src_addr; } ;

/* Variables and functions */
 unsigned long DMA_CYCLIC ; 
 struct axi_dmac_desc* FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct axi_dmac_chan*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct axi_dmac_chan*,int) ; 
 scalar_t__ FUNC3 (struct axi_dmac_chan*) ; 
 scalar_t__ FUNC4 (struct axi_dmac_chan*) ; 
 size_t FUNC5 (struct dma_interleaved_template*,TYPE_2__*) ; 
 size_t FUNC6 (struct dma_interleaved_template*,TYPE_2__*) ; 
 struct axi_dmac_chan* FUNC7 (struct dma_chan*) ; 
 struct dma_async_tx_descriptor* FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static struct dma_async_tx_descriptor *FUNC9(
	struct dma_chan *c, struct dma_interleaved_template *xt,
	unsigned long flags)
{
	struct axi_dmac_chan *chan = FUNC7(c);
	struct axi_dmac_desc *desc;
	size_t dst_icg, src_icg;

	if (xt->frame_size != 1)
		return NULL;

	if (xt->dir != chan->direction)
		return NULL;

	if (FUNC4(chan)) {
		if (!xt->src_inc || !FUNC1(chan, xt->src_start))
			return NULL;
	}

	if (FUNC3(chan)) {
		if (!xt->dst_inc || !FUNC1(chan, xt->dst_start))
			return NULL;
	}

	dst_icg = FUNC5(xt, &xt->sgl[0]);
	src_icg = FUNC6(xt, &xt->sgl[0]);

	if (chan->hw_2d) {
		if (!FUNC2(chan, xt->sgl[0].size) ||
		    xt->numf == 0)
			return NULL;
		if (xt->sgl[0].size + dst_icg > chan->max_length ||
		    xt->sgl[0].size + src_icg > chan->max_length)
			return NULL;
	} else {
		if (dst_icg != 0 || src_icg != 0)
			return NULL;
		if (chan->max_length / xt->sgl[0].size < xt->numf)
			return NULL;
		if (!FUNC2(chan, xt->sgl[0].size * xt->numf))
			return NULL;
	}

	desc = FUNC0(1);
	if (!desc)
		return NULL;

	if (FUNC4(chan)) {
		desc->sg[0].src_addr = xt->src_start;
		desc->sg[0].src_stride = xt->sgl[0].size + src_icg;
	}

	if (FUNC3(chan)) {
		desc->sg[0].dest_addr = xt->dst_start;
		desc->sg[0].dest_stride = xt->sgl[0].size + dst_icg;
	}

	if (chan->hw_2d) {
		desc->sg[0].x_len = xt->sgl[0].size;
		desc->sg[0].y_len = xt->numf;
	} else {
		desc->sg[0].x_len = xt->sgl[0].size * xt->numf;
		desc->sg[0].y_len = 1;
	}

	if (flags & DMA_CYCLIC)
		desc->cyclic = true;

	return FUNC8(&chan->vchan, &desc->vdesc, flags);
}