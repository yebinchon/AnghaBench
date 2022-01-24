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
struct TYPE_2__ {int /*<<< orphan*/  tx_submit; int /*<<< orphan*/  phys; } ;
struct xgene_dma_desc_sw {TYPE_1__ tx; int /*<<< orphan*/  tx_list; } ;
struct xgene_dma_chan {int /*<<< orphan*/  dma_chan; int /*<<< orphan*/  desc_pool; } ;
typedef  int /*<<< orphan*/  dma_addr_t ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_NOWAIT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct xgene_dma_chan*,char*,struct xgene_dma_desc_sw*) ; 
 int /*<<< orphan*/  FUNC2 (struct xgene_dma_chan*,char*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 struct xgene_dma_desc_sw* FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  xgene_dma_tx_submit ; 

__attribute__((used)) static struct xgene_dma_desc_sw *FUNC5(
				 struct xgene_dma_chan *chan)
{
	struct xgene_dma_desc_sw *desc;
	dma_addr_t phys;

	desc = FUNC4(chan->desc_pool, GFP_NOWAIT, &phys);
	if (!desc) {
		FUNC2(chan, "Failed to allocate LDs\n");
		return NULL;
	}

	FUNC0(&desc->tx_list);
	desc->tx.phys = phys;
	desc->tx.tx_submit = xgene_dma_tx_submit;
	FUNC3(&desc->tx, &chan->dma_chan);

	FUNC1(chan, "LD %p allocated\n", desc);

	return desc;
}