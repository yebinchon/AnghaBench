#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct TYPE_8__ {int /*<<< orphan*/  channels; int /*<<< orphan*/  copy_align; } ;
struct xilinx_dma_device {scalar_t__ flush_on_fsync; int nr_channels; int /*<<< orphan*/  dev; struct xilinx_dma_chan** chan; TYPE_4__ common; TYPE_2__* dma_config; int /*<<< orphan*/  ext_addr; } ;
struct TYPE_7__ {int /*<<< orphan*/  device_node; TYPE_4__* device; } ;
struct TYPE_5__ {int park; int vflip_en; } ;
struct xilinx_dma_chan {int desc_pendingcount; int idle; int id; int tdest; int flush_on_fsync; int has_vflip; int has_sg; TYPE_3__ common; int /*<<< orphan*/  tasklet; int /*<<< orphan*/  dev; void* stop_transfer; int /*<<< orphan*/  start_transfer; int /*<<< orphan*/  irq; TYPE_1__ config; int /*<<< orphan*/  desc_offset; int /*<<< orphan*/  ctrl_offset; int /*<<< orphan*/  direction; void* genlock; int /*<<< orphan*/  free_seg_list; int /*<<< orphan*/  active_list; int /*<<< orphan*/  done_list; int /*<<< orphan*/  pending_list; int /*<<< orphan*/  lock; int /*<<< orphan*/  ext_addr; struct xilinx_dma_device* xdev; } ;
struct device_node {int dummy; } ;
struct TYPE_6__ {scalar_t__ dmatype; } ;

/* Variables and functions */
 int /*<<< orphan*/  DMA_DEV_TO_MEM ; 
 int /*<<< orphan*/  DMA_MEM_TO_DEV ; 
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  IRQF_SHARED ; 
 scalar_t__ XDMA_TYPE_AXIDMA ; 
 scalar_t__ XDMA_TYPE_CDMA ; 
 scalar_t__ XDMA_TYPE_VDMA ; 
 int XILINX_DMA_DMASR_SG_MASK ; 
 scalar_t__ XILINX_DMA_FLUSH_BOTH ; 
 scalar_t__ XILINX_DMA_FLUSH_MM2S ; 
 scalar_t__ XILINX_DMA_FLUSH_S2MM ; 
 int /*<<< orphan*/  XILINX_DMA_MM2S_CTRL_OFFSET ; 
 int /*<<< orphan*/  XILINX_DMA_REG_DMASR ; 
 int /*<<< orphan*/  XILINX_DMA_S2MM_CTRL_OFFSET ; 
 int XILINX_VDMA_ENABLE_VERTICAL_FLIP ; 
 int /*<<< orphan*/  XILINX_VDMA_MM2S_DESC_OFFSET ; 
 int /*<<< orphan*/  XILINX_VDMA_REG_ENABLE_VERTICAL_FLIP ; 
 int /*<<< orphan*/  XILINX_VDMA_S2MM_DESC_OFFSET ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,...) ; 
 struct xilinx_dma_chan* FUNC3 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct xilinx_dma_chan*,int /*<<< orphan*/ ) ; 
 int FUNC5 (struct xilinx_dma_chan*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (struct device_node*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC9 (struct device_node*,char*) ; 
 void* FUNC10 (struct device_node*,char*) ; 
 int FUNC11 (struct device_node*,char*,int*) ; 
 int FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,struct xilinx_dma_chan*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  xilinx_cdma_start_transfer ; 
 void* xilinx_cdma_stop_transfer ; 
 int FUNC15 (struct xilinx_dma_chan*) ; 
 int /*<<< orphan*/  xilinx_dma_do_tasklet ; 
 int /*<<< orphan*/  xilinx_dma_irq_handler ; 
 int /*<<< orphan*/  xilinx_dma_start_transfer ; 
 void* xilinx_dma_stop_transfer ; 
 int /*<<< orphan*/  xilinx_vdma_start_transfer ; 

__attribute__((used)) static int FUNC16(struct xilinx_dma_device *xdev,
				  struct device_node *node, int chan_id)
{
	struct xilinx_dma_chan *chan;
	bool has_dre = false;
	u32 value, width;
	int err;

	/* Allocate and initialize the channel structure */
	chan = FUNC3(xdev->dev, sizeof(*chan), GFP_KERNEL);
	if (!chan)
		return -ENOMEM;

	chan->dev = xdev->dev;
	chan->xdev = xdev;
	chan->desc_pendingcount = 0x0;
	chan->ext_addr = xdev->ext_addr;
	/* This variable ensures that descriptors are not
	 * Submitted when dma engine is in progress. This variable is
	 * Added to avoid polling for a bit in the status register to
	 * Know dma state in the driver hot path.
	 */
	chan->idle = true;

	FUNC13(&chan->lock);
	FUNC0(&chan->pending_list);
	FUNC0(&chan->done_list);
	FUNC0(&chan->active_list);
	FUNC0(&chan->free_seg_list);

	/* Retrieve the channel properties from the device tree */
	has_dre = FUNC10(node, "xlnx,include-dre");

	chan->genlock = FUNC10(node, "xlnx,genlock-mode");

	err = FUNC11(node, "xlnx,datawidth", &value);
	if (err) {
		FUNC2(xdev->dev, "missing xlnx,datawidth property\n");
		return err;
	}
	width = value >> 3; /* Convert bits to bytes */

	/* If data width is greater than 8 bytes, DRE is not in hw */
	if (width > 8)
		has_dre = false;

	if (!has_dre)
		xdev->common.copy_align = FUNC6(width - 1);

	if (FUNC9(node, "xlnx,axi-vdma-mm2s-channel") ||
	    FUNC9(node, "xlnx,axi-dma-mm2s-channel") ||
	    FUNC9(node, "xlnx,axi-cdma-channel")) {
		chan->direction = DMA_MEM_TO_DEV;
		chan->id = chan_id;
		chan->tdest = chan_id;

		chan->ctrl_offset = XILINX_DMA_MM2S_CTRL_OFFSET;
		if (xdev->dma_config->dmatype == XDMA_TYPE_VDMA) {
			chan->desc_offset = XILINX_VDMA_MM2S_DESC_OFFSET;
			chan->config.park = 1;

			if (xdev->flush_on_fsync == XILINX_DMA_FLUSH_BOTH ||
			    xdev->flush_on_fsync == XILINX_DMA_FLUSH_MM2S)
				chan->flush_on_fsync = true;
		}
	} else if (FUNC9(node,
					   "xlnx,axi-vdma-s2mm-channel") ||
		   FUNC9(node,
					   "xlnx,axi-dma-s2mm-channel")) {
		chan->direction = DMA_DEV_TO_MEM;
		chan->id = chan_id;
		chan->tdest = chan_id - xdev->nr_channels;
		chan->has_vflip = FUNC10(node,
					"xlnx,enable-vert-flip");
		if (chan->has_vflip) {
			chan->config.vflip_en = FUNC5(chan,
				XILINX_VDMA_REG_ENABLE_VERTICAL_FLIP) &
				XILINX_VDMA_ENABLE_VERTICAL_FLIP;
		}

		chan->ctrl_offset = XILINX_DMA_S2MM_CTRL_OFFSET;
		if (xdev->dma_config->dmatype == XDMA_TYPE_VDMA) {
			chan->desc_offset = XILINX_VDMA_S2MM_DESC_OFFSET;
			chan->config.park = 1;

			if (xdev->flush_on_fsync == XILINX_DMA_FLUSH_BOTH ||
			    xdev->flush_on_fsync == XILINX_DMA_FLUSH_S2MM)
				chan->flush_on_fsync = true;
		}
	} else {
		FUNC2(xdev->dev, "Invalid channel compatible node\n");
		return -EINVAL;
	}

	/* Request the interrupt */
	chan->irq = FUNC7(node, 0);
	err = FUNC12(chan->irq, xilinx_dma_irq_handler, IRQF_SHARED,
			  "xilinx-dma-controller", chan);
	if (err) {
		FUNC2(xdev->dev, "unable to request IRQ %d\n", chan->irq);
		return err;
	}

	if (xdev->dma_config->dmatype == XDMA_TYPE_AXIDMA) {
		chan->start_transfer = xilinx_dma_start_transfer;
		chan->stop_transfer = xilinx_dma_stop_transfer;
	} else if (xdev->dma_config->dmatype == XDMA_TYPE_CDMA) {
		chan->start_transfer = xilinx_cdma_start_transfer;
		chan->stop_transfer = xilinx_cdma_stop_transfer;
	} else {
		chan->start_transfer = xilinx_vdma_start_transfer;
		chan->stop_transfer = xilinx_dma_stop_transfer;
	}

	/* check if SG is enabled (only for AXIDMA and CDMA) */
	if (xdev->dma_config->dmatype != XDMA_TYPE_VDMA) {
		if (FUNC4(chan, XILINX_DMA_REG_DMASR) &
		    XILINX_DMA_DMASR_SG_MASK)
			chan->has_sg = true;
		FUNC1(chan->dev, "ch %d: SG %s\n", chan->id,
			chan->has_sg ? "enabled" : "disabled");
	}

	/* Initialize the tasklet */
	FUNC14(&chan->tasklet, xilinx_dma_do_tasklet,
			(unsigned long)chan);

	/*
	 * Initialize the DMA channel and add it to the DMA engine channels
	 * list.
	 */
	chan->common.device = &xdev->common;

	FUNC8(&chan->common.device_node, &xdev->common.channels);
	xdev->chan[chan->id] = chan;

	/* Reset the channel */
	err = FUNC15(chan);
	if (err < 0) {
		FUNC2(xdev->dev, "Reset channel failed\n");
		return err;
	}

	return 0;
}