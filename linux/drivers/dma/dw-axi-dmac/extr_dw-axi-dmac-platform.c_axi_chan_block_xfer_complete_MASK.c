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
struct virt_dma_desc {int /*<<< orphan*/  node; } ;
struct TYPE_2__ {int /*<<< orphan*/  lock; } ;
struct axi_dma_chan {TYPE_1__ vc; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct axi_dma_chan*) ; 
 int /*<<< orphan*/  FUNC1 (struct axi_dma_chan*) ; 
 int /*<<< orphan*/  FUNC2 (struct axi_dma_chan*) ; 
 int /*<<< orphan*/  FUNC3 (struct axi_dma_chan*) ; 
 int /*<<< orphan*/  FUNC4 (struct axi_dma_chan*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,unsigned long) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct virt_dma_desc*) ; 
 struct virt_dma_desc* FUNC11 (TYPE_1__*) ; 

__attribute__((used)) static void FUNC12(struct axi_dma_chan *chan)
{
	struct virt_dma_desc *vd;
	unsigned long flags;

	FUNC7(&chan->vc.lock, flags);
	if (FUNC9(FUNC1(chan))) {
		FUNC5(FUNC4(chan), "BUG: %s caught DWAXIDMAC_IRQ_DMA_TRF, but channel not idle!\n",
			FUNC2(chan));
		FUNC0(chan);
	}

	/* The completed descriptor currently is in the head of vc list */
	vd = FUNC11(&chan->vc);
	/* Remove the completed descriptor from issued list before completing */
	FUNC6(&vd->node);
	FUNC10(vd);

	/* Submit queued descriptors after processing the completed ones */
	FUNC3(chan);

	FUNC8(&chan->vc.lock, flags);
}