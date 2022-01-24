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
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;
struct pl330_dmac {TYPE_1__ ddma; int /*<<< orphan*/  lock; int /*<<< orphan*/  desc_pool; } ;
struct dma_pl330_chan {struct pl330_dmac* dmac; int /*<<< orphan*/  work_list; scalar_t__ cyclic; int /*<<< orphan*/ * thread; int /*<<< orphan*/  task; } ;
struct dma_chan {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct dma_pl330_chan*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 struct dma_pl330_chan* FUNC9 (struct dma_chan*) ; 

__attribute__((used)) static void FUNC10(struct dma_chan *chan)
{
	struct dma_pl330_chan *pch = FUNC9(chan);
	struct pl330_dmac *pl330 = pch->dmac;
	unsigned long flags;

	FUNC8(&pch->task);

	FUNC3(pch->dmac->ddma.dev);
	FUNC6(&pl330->lock, flags);

	FUNC1(pch->thread);
	pch->thread = NULL;

	if (pch->cyclic)
		FUNC0(&pch->work_list, &pch->dmac->desc_pool);

	FUNC7(&pl330->lock, flags);
	FUNC4(pch->dmac->ddma.dev);
	FUNC5(pch->dmac->ddma.dev);
	FUNC2(pch);
}