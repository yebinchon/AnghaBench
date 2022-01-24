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
struct sirfsoc_dma_chan {int /*<<< orphan*/  lock; TYPE_1__ chan; } ;
struct sirfsoc_dma {int type; scalar_t__ base; } ;
struct dma_chan {int dummy; } ;

/* Variables and functions */
 scalar_t__ SIRFSOC_DMA_CH_LOOP_CTRL ; 
 scalar_t__ SIRFSOC_DMA_CH_LOOP_CTRL_ATLAS7 ; 
 scalar_t__ SIRFSOC_DMA_LOOP_CTRL_ATLAS7 ; 
#define  SIRFSOC_DMA_VER_A6 130 
#define  SIRFSOC_DMA_VER_A7V1 129 
#define  SIRFSOC_DMA_VER_A7V2 128 
 struct sirfsoc_dma* FUNC0 (TYPE_1__*) ; 
 struct sirfsoc_dma_chan* FUNC1 (struct dma_chan*) ; 
 int FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int,scalar_t__) ; 

__attribute__((used)) static int FUNC6(struct dma_chan *chan)
{
	struct sirfsoc_dma_chan *schan = FUNC1(chan);
	struct sirfsoc_dma *sdma = FUNC0(&schan->chan);
	int cid = schan->chan.chan_id;
	unsigned long flags;

	FUNC3(&schan->lock, flags);
	switch (sdma->type) {
	case SIRFSOC_DMA_VER_A7V1:
		FUNC5((1 << cid) | 1 << (cid + 16),
			       sdma->base + SIRFSOC_DMA_CH_LOOP_CTRL_ATLAS7);
		break;
	case SIRFSOC_DMA_VER_A7V2:
		FUNC5(0x10001,
			       sdma->base + SIRFSOC_DMA_LOOP_CTRL_ATLAS7);
		break;
	case SIRFSOC_DMA_VER_A6:
		FUNC5(FUNC2(sdma->base +
					     SIRFSOC_DMA_CH_LOOP_CTRL) |
			       ((1 << cid) | 1 << (cid + 16)),
			       sdma->base + SIRFSOC_DMA_CH_LOOP_CTRL);
		break;

	default:
		break;
	}

	FUNC4(&schan->lock, flags);

	return 0;
}