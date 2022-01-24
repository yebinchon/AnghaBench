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
struct dma_async_tx_descriptor {int /*<<< orphan*/  phys; int /*<<< orphan*/  tx_submit; } ;
struct xilinx_dma_tx_descriptor {struct dma_async_tx_descriptor async_tx; int /*<<< orphan*/  segments; } ;
struct xilinx_dma_chan {scalar_t__ ext_addr; int /*<<< orphan*/  common; TYPE_1__* xdev; } ;
struct xilinx_cdma_desc_hw {size_t control; int /*<<< orphan*/  next_desc; void* dest_addr_msb; void* src_addr_msb; void* dest_addr; void* src_addr; } ;
struct xilinx_cdma_tx_segment {int /*<<< orphan*/  phys; int /*<<< orphan*/  node; struct xilinx_cdma_desc_hw hw; } ;
struct dma_chan {int dummy; } ;
typedef  void* dma_addr_t ;
struct TYPE_2__ {size_t max_buffer_len; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct dma_async_tx_descriptor*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 struct xilinx_dma_chan* FUNC2 (struct dma_chan*) ; 
 void* FUNC3 (void*) ; 
 struct xilinx_cdma_tx_segment* FUNC4 (struct xilinx_dma_chan*) ; 
 struct xilinx_dma_tx_descriptor* FUNC5 (struct xilinx_dma_chan*) ; 
 int /*<<< orphan*/  FUNC6 (struct xilinx_dma_chan*,struct xilinx_dma_tx_descriptor*) ; 
 int /*<<< orphan*/  xilinx_dma_tx_submit ; 

__attribute__((used)) static struct dma_async_tx_descriptor *
FUNC7(struct dma_chan *dchan, dma_addr_t dma_dst,
			dma_addr_t dma_src, size_t len, unsigned long flags)
{
	struct xilinx_dma_chan *chan = FUNC2(dchan);
	struct xilinx_dma_tx_descriptor *desc;
	struct xilinx_cdma_tx_segment *segment;
	struct xilinx_cdma_desc_hw *hw;

	if (!len || len > chan->xdev->max_buffer_len)
		return NULL;

	desc = FUNC5(chan);
	if (!desc)
		return NULL;

	FUNC0(&desc->async_tx, &chan->common);
	desc->async_tx.tx_submit = xilinx_dma_tx_submit;

	/* Allocate the link descriptor from DMA pool */
	segment = FUNC4(chan);
	if (!segment)
		goto error;

	hw = &segment->hw;
	hw->control = len;
	hw->src_addr = dma_src;
	hw->dest_addr = dma_dst;
	if (chan->ext_addr) {
		hw->src_addr_msb = FUNC3(dma_src);
		hw->dest_addr_msb = FUNC3(dma_dst);
	}

	/* Insert the segment into the descriptor segments list. */
	FUNC1(&segment->node, &desc->segments);

	desc->async_tx.phys = segment->phys;
	hw->next_desc = segment->phys;

	return &desc->async_tx;

error:
	FUNC6(chan, desc);
	return NULL;
}