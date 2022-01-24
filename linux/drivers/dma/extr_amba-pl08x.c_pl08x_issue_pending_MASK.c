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
struct TYPE_2__ {int /*<<< orphan*/  lock; } ;
struct pl08x_dma_chan {scalar_t__ state; TYPE_1__ vc; int /*<<< orphan*/  phychan; } ;
struct dma_chan {int dummy; } ;

/* Variables and functions */
 scalar_t__ PL08X_CHAN_WAITING ; 
 int /*<<< orphan*/  FUNC0 (struct pl08x_dma_chan*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 struct pl08x_dma_chan* FUNC3 (struct dma_chan*) ; 
 scalar_t__ FUNC4 (TYPE_1__*) ; 

__attribute__((used)) static void FUNC5(struct dma_chan *chan)
{
	struct pl08x_dma_chan *plchan = FUNC3(chan);
	unsigned long flags;

	FUNC1(&plchan->vc.lock, flags);
	if (FUNC4(&plchan->vc)) {
		if (!plchan->phychan && plchan->state != PL08X_CHAN_WAITING)
			FUNC0(plchan);
	}
	FUNC2(&plchan->vc.lock, flags);
}