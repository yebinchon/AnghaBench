#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  flags; int /*<<< orphan*/  tx_submit; } ;
struct imxdma_desc {int /*<<< orphan*/  node; int /*<<< orphan*/  status; TYPE_1__ desc; } ;
struct imxdma_channel {scalar_t__ descs_allocated; int /*<<< orphan*/  ld_free; int /*<<< orphan*/  dma_request; } ;
struct imx_dma_data {int /*<<< orphan*/  dma_request; } ;
struct dma_chan {struct imx_dma_data* private; } ;
struct dma_async_tx_descriptor {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  DMA_COMPLETE ; 
 int /*<<< orphan*/  DMA_CTRL_ACK ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ IMXDMA_MAX_CHAN_DESCRIPTORS ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,struct dma_chan*) ; 
 int /*<<< orphan*/  imxdma_tx_submit ; 
 struct imxdma_desc* FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 struct imxdma_channel* FUNC4 (struct dma_chan*) ; 

__attribute__((used)) static int FUNC5(struct dma_chan *chan)
{
	struct imxdma_channel *imxdmac = FUNC4(chan);
	struct imx_dma_data *data = chan->private;

	if (data != NULL)
		imxdmac->dma_request = data->dma_request;

	while (imxdmac->descs_allocated < IMXDMA_MAX_CHAN_DESCRIPTORS) {
		struct imxdma_desc *desc;

		desc = FUNC1(sizeof(*desc), GFP_KERNEL);
		if (!desc)
			break;
		FUNC3(&desc->desc, 0, sizeof(struct dma_async_tx_descriptor));
		FUNC0(&desc->desc, chan);
		desc->desc.tx_submit = imxdma_tx_submit;
		/* txd.flags will be overwritten in prep funcs */
		desc->desc.flags = DMA_CTRL_ACK;
		desc->status = DMA_COMPLETE;

		FUNC2(&desc->node, &imxdmac->ld_free);
		imxdmac->descs_allocated++;
	}

	if (!imxdmac->descs_allocated)
		return -ENOMEM;

	return imxdmac->descs_allocated;
}