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
struct pch_dma_desc {TYPE_1__ txd; int /*<<< orphan*/  tx_list; } ;
struct pch_dma {int /*<<< orphan*/  pool; } ;
struct dma_chan {int /*<<< orphan*/  device; } ;
typedef  int /*<<< orphan*/  gfp_t ;
typedef  int /*<<< orphan*/  dma_addr_t ;

/* Variables and functions */
 int /*<<< orphan*/  DMA_CTRL_ACK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,struct dma_chan*) ; 
 struct pch_dma_desc* FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  pd_tx_submit ; 
 struct pch_dma* FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct pch_dma_desc *FUNC4(struct dma_chan *chan, gfp_t flags)
{
	struct pch_dma_desc *desc = NULL;
	struct pch_dma *pd = FUNC3(chan->device);
	dma_addr_t addr;

	desc = FUNC2(pd->pool, flags, &addr);
	if (desc) {
		FUNC0(&desc->tx_list);
		FUNC1(&desc->txd, chan);
		desc->txd.tx_submit = pd_tx_submit;
		desc->txd.flags = DMA_CTRL_ACK;
		desc->txd.phys = addr;
	}

	return desc;
}