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
struct mpc_dma_chan {int /*<<< orphan*/  lock; int /*<<< orphan*/  free; int /*<<< orphan*/  active; int /*<<< orphan*/  queued; int /*<<< orphan*/  prepared; } ;
struct mpc_dma {TYPE_1__* regs; } ;
struct dma_chan {int /*<<< orphan*/  chan_id; } ;
struct TYPE_2__ {int /*<<< orphan*/  dmacerq; } ;

/* Variables and functions */
 struct mpc_dma* FUNC0 (struct dma_chan*) ; 
 struct mpc_dma_chan* FUNC1 (struct dma_chan*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static int FUNC6(struct dma_chan *chan)
{
	struct mpc_dma_chan *mchan = FUNC1(chan);
	struct mpc_dma *mdma = FUNC0(chan);
	unsigned long flags;

	/* Disable channel requests */
	FUNC4(&mchan->lock, flags);

	FUNC3(&mdma->regs->dmacerq, chan->chan_id);
	FUNC2(&mchan->prepared, &mchan->free);
	FUNC2(&mchan->queued, &mchan->free);
	FUNC2(&mchan->active, &mchan->free);

	FUNC5(&mchan->lock, flags);

	return 0;
}