#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct pl330_dmac {int /*<<< orphan*/  lock; } ;
struct dma_pl330_chan {int cyclic; int /*<<< orphan*/  task; int /*<<< orphan*/  thread; struct pl330_dmac* dmac; } ;
struct dma_chan {int dummy; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  FUNC0 (struct dma_chan*) ; 
 int /*<<< orphan*/  FUNC1 (struct pl330_dmac*) ; 
 int /*<<< orphan*/  pl330_tasklet ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,unsigned long) ; 
 struct dma_pl330_chan* FUNC5 (struct dma_chan*) ; 

__attribute__((used)) static int FUNC6(struct dma_chan *chan)
{
	struct dma_pl330_chan *pch = FUNC5(chan);
	struct pl330_dmac *pl330 = pch->dmac;
	unsigned long flags;

	FUNC2(&pl330->lock, flags);

	FUNC0(chan);
	pch->cyclic = false;

	pch->thread = FUNC1(pl330);
	if (!pch->thread) {
		FUNC3(&pl330->lock, flags);
		return -ENOMEM;
	}

	FUNC4(&pch->task, pl330_tasklet, (unsigned long) pch);

	FUNC3(&pl330->lock, flags);

	return 1;
}