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
typedef  int /*<<< orphan*/  u32 ;
struct stm32_mdma_desc {int cyclic; int count; TYPE_2__* node; int /*<<< orphan*/  vdesc; } ;
struct stm32_mdma_chan {int /*<<< orphan*/  desc_pool; int /*<<< orphan*/  vchan; TYPE_1__* desc; } ;
struct scatterlist {int dummy; } ;
struct dma_chan {int dummy; } ;
struct dma_async_tx_descriptor {int dummy; } ;
typedef  enum dma_transfer_direction { ____Placeholder_dma_transfer_direction } dma_transfer_direction ;
struct TYPE_4__ {int /*<<< orphan*/  hwdesc_phys; int /*<<< orphan*/  hwdesc; } ;
struct TYPE_3__ {scalar_t__ cyclic; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct stm32_mdma_chan*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct stm32_mdma_desc*) ; 
 struct stm32_mdma_desc* FUNC4 (struct stm32_mdma_chan*,int /*<<< orphan*/ ) ; 
 int FUNC5 (struct stm32_mdma_chan*,struct stm32_mdma_desc*,struct scatterlist*,int /*<<< orphan*/ ,int) ; 
 struct stm32_mdma_chan* FUNC6 (struct dma_chan*) ; 
 struct dma_async_tx_descriptor* FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static struct dma_async_tx_descriptor *
FUNC8(struct dma_chan *c, struct scatterlist *sgl,
			 u32 sg_len, enum dma_transfer_direction direction,
			 unsigned long flags, void *context)
{
	struct stm32_mdma_chan *chan = FUNC6(c);
	struct stm32_mdma_desc *desc;
	int i, ret;

	/*
	 * Once DMA is in setup cyclic mode the channel we cannot assign this
	 * channel anymore. The DMA channel needs to be aborted or terminated
	 * for allowing another request.
	 */
	if (chan->desc && chan->desc->cyclic) {
		FUNC1(FUNC0(chan),
			"Request not allowed when dma in cyclic mode\n");
		return NULL;
	}

	desc = FUNC4(chan, sg_len);
	if (!desc)
		return NULL;

	ret = FUNC5(chan, desc, sgl, sg_len, direction);
	if (ret < 0)
		goto xfer_setup_err;

	desc->cyclic = false;

	return FUNC7(&chan->vchan, &desc->vdesc, flags);

xfer_setup_err:
	for (i = 0; i < desc->count; i++)
		FUNC2(chan->desc_pool, desc->node[i].hwdesc,
			      desc->node[i].hwdesc_phys);
	FUNC3(desc);
	return NULL;
}