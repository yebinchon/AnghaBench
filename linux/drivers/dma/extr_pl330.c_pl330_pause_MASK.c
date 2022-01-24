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
struct pl330_dmac {TYPE_1__ ddma; int /*<<< orphan*/  lock; } ;
struct dma_pl330_chan {int /*<<< orphan*/  lock; int /*<<< orphan*/  thread; struct pl330_dmac* dmac; } ;
struct dma_chan {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,unsigned long) ; 
 struct dma_pl330_chan* FUNC8 (struct dma_chan*) ; 

__attribute__((used)) static int FUNC9(struct dma_chan *chan)
{
	struct dma_pl330_chan *pch = FUNC8(chan);
	struct pl330_dmac *pl330 = pch->dmac;
	unsigned long flags;

	FUNC1(pl330->ddma.dev);
	FUNC5(&pch->lock, flags);

	FUNC4(&pl330->lock);
	FUNC0(pch->thread);
	FUNC6(&pl330->lock);

	FUNC7(&pch->lock, flags);
	FUNC2(pl330->ddma.dev);
	FUNC3(pl330->ddma.dev);

	return 0;
}