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
struct pl08x_driver_data {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  lock; } ;
struct pl08x_dma_chan {TYPE_2__ vc; TYPE_1__* at; scalar_t__ phychan; int /*<<< orphan*/  state; struct pl08x_driver_data* host; } ;
struct dma_chan {int dummy; } ;
struct TYPE_3__ {int /*<<< orphan*/  vd; } ;

/* Variables and functions */
 int /*<<< orphan*/  PL08X_CHAN_IDLE ; 
 int /*<<< orphan*/  FUNC0 (struct pl08x_driver_data*,struct pl08x_dma_chan*) ; 
 int /*<<< orphan*/  FUNC1 (struct pl08x_dma_chan*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 struct pl08x_dma_chan* FUNC4 (struct dma_chan*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC6(struct dma_chan *chan)
{
	struct pl08x_dma_chan *plchan = FUNC4(chan);
	struct pl08x_driver_data *pl08x = plchan->host;
	unsigned long flags;

	FUNC2(&plchan->vc.lock, flags);
	if (!plchan->phychan && !plchan->at) {
		FUNC3(&plchan->vc.lock, flags);
		return 0;
	}

	plchan->state = PL08X_CHAN_IDLE;

	if (plchan->phychan) {
		/*
		 * Mark physical channel as free and free any slave
		 * signal
		 */
		FUNC1(plchan);
	}
	/* Dequeue jobs and free LLIs */
	if (plchan->at) {
		FUNC5(&plchan->at->vd);
		plchan->at = NULL;
	}
	/* Dequeue jobs not yet fired as well */
	FUNC0(pl08x, plchan);

	FUNC3(&plchan->vc.lock, flags);

	return 0;
}