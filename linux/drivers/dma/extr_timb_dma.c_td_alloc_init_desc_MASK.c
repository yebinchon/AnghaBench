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
struct TYPE_2__ {int /*<<< orphan*/  phys; int /*<<< orphan*/  flags; int /*<<< orphan*/  tx_submit; } ;
struct timb_dma_desc {int desc_list_len; struct timb_dma_desc* desc_list; TYPE_1__ txd; } ;
struct dma_chan {int dummy; } ;
struct timb_dma_chan {int desc_elems; struct dma_chan chan; } ;

/* Variables and functions */
 int /*<<< orphan*/  DMA_CTRL_ACK ; 
 int /*<<< orphan*/  DMA_TO_DEVICE ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int TIMB_DMA_DESC_SIZE ; 
 int /*<<< orphan*/  FUNC0 (struct dma_chan*) ; 
 int /*<<< orphan*/  FUNC1 (struct dma_chan*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,struct dma_chan*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,struct timb_dma_desc*,int,int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct timb_dma_desc*) ; 
 void* FUNC7 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  td_tx_submit ; 

__attribute__((used)) static struct timb_dma_desc *FUNC8(struct timb_dma_chan *td_chan)
{
	struct dma_chan *chan = &td_chan->chan;
	struct timb_dma_desc *td_desc;
	int err;

	td_desc = FUNC7(sizeof(struct timb_dma_desc), GFP_KERNEL);
	if (!td_desc)
		goto out;

	td_desc->desc_list_len = td_chan->desc_elems * TIMB_DMA_DESC_SIZE;

	td_desc->desc_list = FUNC7(td_desc->desc_list_len, GFP_KERNEL);
	if (!td_desc->desc_list)
		goto err;

	FUNC3(&td_desc->txd, chan);
	td_desc->txd.tx_submit = td_tx_submit;
	td_desc->txd.flags = DMA_CTRL_ACK;

	td_desc->txd.phys = FUNC4(FUNC1(chan),
		td_desc->desc_list, td_desc->desc_list_len, DMA_TO_DEVICE);

	err = FUNC5(FUNC1(chan), td_desc->txd.phys);
	if (err) {
		FUNC2(FUNC0(chan), "DMA mapping error: %d\n", err);
		goto err;
	}

	return td_desc;
err:
	FUNC6(td_desc->desc_list);
	FUNC6(td_desc);
out:
	return NULL;

}