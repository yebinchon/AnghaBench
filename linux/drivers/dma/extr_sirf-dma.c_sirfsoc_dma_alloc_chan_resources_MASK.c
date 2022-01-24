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
struct TYPE_4__ {int /*<<< orphan*/  tx_submit; int /*<<< orphan*/  flags; } ;
struct sirfsoc_dma_desc {int /*<<< orphan*/  node; TYPE_2__ desc; } ;
struct sirfsoc_dma_chan {int /*<<< orphan*/  lock; int /*<<< orphan*/  free; } ;
struct TYPE_3__ {int /*<<< orphan*/  dev; } ;
struct sirfsoc_dma {TYPE_1__ dma; } ;
struct dma_chan {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  DMA_CTRL_ACK ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int SIRFSOC_DMA_DESCRIPTORS ; 
 int /*<<< orphan*/  descs ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,struct dma_chan*) ; 
 struct sirfsoc_dma* FUNC3 (struct dma_chan*) ; 
 struct sirfsoc_dma_chan* FUNC4 (struct dma_chan*) ; 
 struct sirfsoc_dma_desc* FUNC5 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  sirfsoc_dma_tx_submit ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static int FUNC11(struct dma_chan *chan)
{
	struct sirfsoc_dma *sdma = FUNC3(chan);
	struct sirfsoc_dma_chan *schan = FUNC4(chan);
	struct sirfsoc_dma_desc *sdesc;
	unsigned long flags;
	FUNC0(descs);
	int i;

	FUNC8(sdma->dma.dev);

	/* Alloc descriptors for this channel */
	for (i = 0; i < SIRFSOC_DMA_DESCRIPTORS; i++) {
		sdesc = FUNC5(sizeof(*sdesc), GFP_KERNEL);
		if (!sdesc) {
			FUNC1(sdma->dma.dev, "Memory allocation error. "
				"Allocated only %u descriptors\n", i);
			break;
		}

		FUNC2(&sdesc->desc, chan);
		sdesc->desc.flags = DMA_CTRL_ACK;
		sdesc->desc.tx_submit = sirfsoc_dma_tx_submit;

		FUNC6(&sdesc->node, &descs);
	}

	/* Return error only if no descriptors were allocated */
	if (i == 0)
		return -ENOMEM;

	FUNC9(&schan->lock, flags);

	FUNC7(&descs, &schan->free);
	FUNC10(&schan->lock, flags);

	return i;
}