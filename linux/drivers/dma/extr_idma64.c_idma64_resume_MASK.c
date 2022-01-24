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
struct TYPE_3__ {int /*<<< orphan*/  lock; } ;
struct idma64_chan {TYPE_1__ vchan; TYPE_2__* desc; } ;
struct dma_chan {int dummy; } ;
struct TYPE_4__ {scalar_t__ status; } ;

/* Variables and functions */
 scalar_t__ DMA_IN_PROGRESS ; 
 scalar_t__ DMA_PAUSED ; 
 int /*<<< orphan*/  FUNC0 (struct idma64_chan*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 struct idma64_chan* FUNC3 (struct dma_chan*) ; 

__attribute__((used)) static int FUNC4(struct dma_chan *chan)
{
	struct idma64_chan *idma64c = FUNC3(chan);
	unsigned long flags;

	FUNC1(&idma64c->vchan.lock, flags);
	if (idma64c->desc && idma64c->desc->status == DMA_PAUSED) {
		idma64c->desc->status = DMA_IN_PROGRESS;
		FUNC0(idma64c);
	}
	FUNC2(&idma64c->vchan.lock, flags);

	return 0;
}