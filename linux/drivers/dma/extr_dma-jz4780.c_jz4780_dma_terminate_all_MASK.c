#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct jz4780_dma_dev {int dummy; } ;
struct TYPE_5__ {int /*<<< orphan*/  lock; } ;
struct jz4780_dma_chan {TYPE_2__ vchan; int /*<<< orphan*/  id; TYPE_1__* desc; } ;
struct dma_chan {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  vdesc; } ;

/* Variables and functions */
 int /*<<< orphan*/  JZ_DMA_REG_DCS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  head ; 
 int /*<<< orphan*/  FUNC1 (struct jz4780_dma_dev*,int /*<<< orphan*/ ) ; 
 struct jz4780_dma_dev* FUNC2 (struct jz4780_dma_chan*) ; 
 int /*<<< orphan*/  FUNC3 (struct jz4780_dma_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 struct jz4780_dma_chan* FUNC6 (struct dma_chan*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_2__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC10(struct dma_chan *chan)
{
	struct jz4780_dma_chan *jzchan = FUNC6(chan);
	struct jz4780_dma_dev *jzdma = FUNC2(jzchan);
	unsigned long flags;
	FUNC0(head);

	FUNC4(&jzchan->vchan.lock, flags);

	/* Clear the DMA status and stop the transfer. */
	FUNC3(jzdma, jzchan->id, JZ_DMA_REG_DCS, 0);
	if (jzchan->desc) {
		FUNC9(&jzchan->desc->vdesc);
		jzchan->desc = NULL;
	}

	FUNC1(jzdma, jzchan->id);

	FUNC8(&jzchan->vchan, &head);

	FUNC5(&jzchan->vchan.lock, flags);

	FUNC7(&jzchan->vchan, &head);
	return 0;
}