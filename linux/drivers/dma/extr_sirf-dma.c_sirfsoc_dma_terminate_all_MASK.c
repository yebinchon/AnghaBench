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
struct TYPE_2__ {int chan_id; } ;
struct sirfsoc_dma_chan {int /*<<< orphan*/  lock; int /*<<< orphan*/  free; int /*<<< orphan*/  queued; int /*<<< orphan*/  active; TYPE_1__ chan; } ;
struct sirfsoc_dma {int type; scalar_t__ base; } ;
struct dma_chan {int dummy; } ;

/* Variables and functions */
 scalar_t__ SIRFSOC_DMA_CH_INT ; 
 scalar_t__ SIRFSOC_DMA_CH_LOOP_CTRL ; 
 scalar_t__ SIRFSOC_DMA_CH_LOOP_CTRL_CLR_ATLAS7 ; 
 scalar_t__ SIRFSOC_DMA_CH_VALID ; 
 int SIRFSOC_DMA_INT_ALL_ATLAS7 ; 
 scalar_t__ SIRFSOC_DMA_INT_ATLAS7 ; 
 scalar_t__ SIRFSOC_DMA_INT_EN ; 
 scalar_t__ SIRFSOC_DMA_INT_EN_ATLAS7 ; 
 scalar_t__ SIRFSOC_DMA_INT_EN_CLR ; 
 scalar_t__ SIRFSOC_DMA_LOOP_CTRL_ATLAS7 ; 
 scalar_t__ SIRFSOC_DMA_VALID_ATLAS7 ; 
#define  SIRFSOC_DMA_VER_A6 130 
#define  SIRFSOC_DMA_VER_A7V1 129 
#define  SIRFSOC_DMA_VER_A7V2 128 
 struct sirfsoc_dma* FUNC0 (TYPE_1__*) ; 
 struct sirfsoc_dma_chan* FUNC1 (struct dma_chan*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (int,scalar_t__) ; 

__attribute__((used)) static int FUNC7(struct dma_chan *chan)
{
	struct sirfsoc_dma_chan *schan = FUNC1(chan);
	struct sirfsoc_dma *sdma = FUNC0(&schan->chan);
	int cid = schan->chan.chan_id;
	unsigned long flags;

	FUNC4(&schan->lock, flags);

	switch (sdma->type) {
	case SIRFSOC_DMA_VER_A7V1:
		FUNC6(1 << cid, sdma->base + SIRFSOC_DMA_INT_EN_CLR);
		FUNC6(1 << cid, sdma->base + SIRFSOC_DMA_CH_INT);
		FUNC6((1 << cid) | 1 << (cid + 16),
			       sdma->base +
			       SIRFSOC_DMA_CH_LOOP_CTRL_CLR_ATLAS7);
		FUNC6(1 << cid, sdma->base + SIRFSOC_DMA_CH_VALID);
		break;
	case SIRFSOC_DMA_VER_A7V2:
		FUNC6(0, sdma->base + SIRFSOC_DMA_INT_EN_ATLAS7);
		FUNC6(SIRFSOC_DMA_INT_ALL_ATLAS7,
			       sdma->base + SIRFSOC_DMA_INT_ATLAS7);
		FUNC6(0, sdma->base + SIRFSOC_DMA_LOOP_CTRL_ATLAS7);
		FUNC6(0, sdma->base + SIRFSOC_DMA_VALID_ATLAS7);
		break;
	case SIRFSOC_DMA_VER_A6:
		FUNC6(FUNC3(sdma->base + SIRFSOC_DMA_INT_EN) &
			       ~(1 << cid), sdma->base + SIRFSOC_DMA_INT_EN);
		FUNC6(FUNC3(sdma->base +
					     SIRFSOC_DMA_CH_LOOP_CTRL) &
			       ~((1 << cid) | 1 << (cid + 16)),
			       sdma->base + SIRFSOC_DMA_CH_LOOP_CTRL);
		FUNC6(1 << cid, sdma->base + SIRFSOC_DMA_CH_VALID);
		break;
	default:
		break;
	}

	FUNC2(&schan->active, &schan->free);
	FUNC2(&schan->queued, &schan->free);

	FUNC5(&schan->lock, flags);

	return 0;
}