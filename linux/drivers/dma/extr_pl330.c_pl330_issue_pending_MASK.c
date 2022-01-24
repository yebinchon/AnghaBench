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
struct dma_pl330_chan {int active; int /*<<< orphan*/  lock; int /*<<< orphan*/  work_list; int /*<<< orphan*/  submitted_list; TYPE_2__* dmac; } ;
struct dma_chan {int dummy; } ;
struct TYPE_3__ {int /*<<< orphan*/  dev; } ;
struct TYPE_4__ {TYPE_1__ ddma; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 
 struct dma_pl330_chan* FUNC7 (struct dma_chan*) ; 

__attribute__((used)) static void FUNC8(struct dma_chan *chan)
{
	struct dma_pl330_chan *pch = FUNC7(chan);
	unsigned long flags;

	FUNC5(&pch->lock, flags);
	if (FUNC1(&pch->work_list)) {
		/*
		 * Warn on nothing pending. Empty submitted_list may
		 * break our pm_runtime usage counter as it is
		 * updated on work_list emptiness status.
		 */
		FUNC0(FUNC1(&pch->submitted_list));
		pch->active = true;
		FUNC4(pch->dmac->ddma.dev);
	}
	FUNC2(&pch->submitted_list, &pch->work_list);
	FUNC6(&pch->lock, flags);

	FUNC3((unsigned long)pch);
}