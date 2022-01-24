#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct dw_axi_dma {int /*<<< orphan*/  desc_pool; } ;
struct TYPE_4__ {int /*<<< orphan*/  phys; } ;
struct TYPE_5__ {TYPE_1__ tx; } ;
struct axi_dma_desc {struct axi_dma_chan* chan; TYPE_2__ vd; int /*<<< orphan*/  xfer_list; } ;
struct axi_dma_chan {int /*<<< orphan*/  descs_allocated; TYPE_3__* chip; } ;
typedef  int /*<<< orphan*/  dma_addr_t ;
struct TYPE_6__ {struct dw_axi_dma* dw; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_NOWAIT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct axi_dma_chan*) ; 
 int /*<<< orphan*/  FUNC3 (struct axi_dma_chan*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 struct axi_dma_desc* FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int) ; 

__attribute__((used)) static struct axi_dma_desc *FUNC7(struct axi_dma_chan *chan)
{
	struct dw_axi_dma *dw = chan->chip->dw;
	struct axi_dma_desc *desc;
	dma_addr_t phys;

	desc = FUNC5(dw->desc_pool, GFP_NOWAIT, &phys);
	if (FUNC6(!desc)) {
		FUNC4(FUNC3(chan), "%s: not enough descriptors available\n",
			FUNC2(chan));
		return NULL;
	}

	FUNC1(&chan->descs_allocated);
	FUNC0(&desc->xfer_list);
	desc->vd.tx.phys = phys;
	desc->chan = chan;

	return desc;
}