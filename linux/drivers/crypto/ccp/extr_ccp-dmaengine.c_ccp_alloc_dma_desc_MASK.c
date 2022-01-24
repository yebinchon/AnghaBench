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
struct TYPE_4__ {unsigned long flags; int /*<<< orphan*/  tx_submit; } ;
struct ccp_dma_desc {int /*<<< orphan*/  status; int /*<<< orphan*/  active; int /*<<< orphan*/  pending; TYPE_1__* ccp; TYPE_2__ tx_desc; } ;
struct ccp_dma_chan {TYPE_1__* ccp; int /*<<< orphan*/  dma_chan; } ;
struct TYPE_3__ {int /*<<< orphan*/  dma_desc_cache; } ;

/* Variables and functions */
 int /*<<< orphan*/  DMA_IN_PROGRESS ; 
 int /*<<< orphan*/  GFP_NOWAIT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  ccp_tx_submit ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,int /*<<< orphan*/ *) ; 
 struct ccp_dma_desc* FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct ccp_dma_desc *FUNC3(struct ccp_dma_chan *chan,
					       unsigned long flags)
{
	struct ccp_dma_desc *desc;

	desc = FUNC2(chan->ccp->dma_desc_cache, GFP_NOWAIT);
	if (!desc)
		return NULL;

	FUNC1(&desc->tx_desc, &chan->dma_chan);
	desc->tx_desc.flags = flags;
	desc->tx_desc.tx_submit = ccp_tx_submit;
	desc->ccp = chan->ccp;
	FUNC0(&desc->pending);
	FUNC0(&desc->active);
	desc->status = DMA_IN_PROGRESS;

	return desc;
}