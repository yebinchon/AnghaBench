#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int data_bus_width; } ;
struct pl330_dmac {TYPE_1__ pcfg; } ;
struct dma_async_tx_descriptor {unsigned long flags; } ;
struct TYPE_4__ {int src_inc; int dst_inc; int brst_size; int brst_len; } ;
struct dma_pl330_desc {size_t bytes_requested; struct dma_async_tx_descriptor txd; TYPE_2__ rqcfg; int /*<<< orphan*/  rqtype; } ;
struct dma_pl330_chan {struct pl330_dmac* dmac; } ;
struct dma_chan {int dummy; } ;
typedef  size_t dma_addr_t ;

/* Variables and functions */
 int /*<<< orphan*/  DMA_MEM_TO_MEM ; 
 struct dma_pl330_desc* FUNC0 (struct dma_pl330_chan*,size_t,size_t,size_t) ; 
 int FUNC1 (struct dma_pl330_desc*,size_t) ; 
 struct dma_pl330_chan* FUNC2 (struct dma_chan*) ; 
 scalar_t__ FUNC3 (int) ; 

__attribute__((used)) static struct dma_async_tx_descriptor *
FUNC4(struct dma_chan *chan, dma_addr_t dst,
		dma_addr_t src, size_t len, unsigned long flags)
{
	struct dma_pl330_desc *desc;
	struct dma_pl330_chan *pch = FUNC2(chan);
	struct pl330_dmac *pl330;
	int burst;

	if (FUNC3(!pch || !len))
		return NULL;

	pl330 = pch->dmac;

	desc = FUNC0(pch, dst, src, len);
	if (!desc)
		return NULL;

	desc->rqcfg.src_inc = 1;
	desc->rqcfg.dst_inc = 1;
	desc->rqtype = DMA_MEM_TO_MEM;

	/* Select max possible burst size */
	burst = pl330->pcfg.data_bus_width / 8;

	/*
	 * Make sure we use a burst size that aligns with all the memcpy
	 * parameters because our DMA programming algorithm doesn't cope with
	 * transfers which straddle an entry in the DMA device's MFIFO.
	 */
	while ((src | dst | len) & (burst - 1))
		burst /= 2;

	desc->rqcfg.brst_size = 0;
	while (burst != (1 << desc->rqcfg.brst_size))
		desc->rqcfg.brst_size++;

	/*
	 * If burst size is smaller than bus width then make sure we only
	 * transfer one at a time to avoid a burst stradling an MFIFO entry.
	 */
	if (desc->rqcfg.brst_size * 8 < pl330->pcfg.data_bus_width)
		desc->rqcfg.brst_len = 1;

	desc->rqcfg.brst_len = FUNC1(desc, len);
	desc->bytes_requested = len;

	desc->txd.flags = flags;

	return &desc->txd;
}