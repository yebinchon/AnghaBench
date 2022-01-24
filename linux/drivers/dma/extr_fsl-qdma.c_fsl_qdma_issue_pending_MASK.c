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
struct fsl_qdma_queue {int /*<<< orphan*/  queue_lock; } ;
struct TYPE_2__ {int /*<<< orphan*/  lock; } ;
struct fsl_qdma_chan {TYPE_1__ vchan; struct fsl_qdma_queue* queue; } ;
struct dma_chan {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct fsl_qdma_chan*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 struct fsl_qdma_chan* FUNC5 (struct dma_chan*) ; 
 scalar_t__ FUNC6 (TYPE_1__*) ; 

__attribute__((used)) static void FUNC7(struct dma_chan *chan)
{
	unsigned long flags;
	struct fsl_qdma_chan *fsl_chan = FUNC5(chan);
	struct fsl_qdma_queue *fsl_queue = fsl_chan->queue;

	FUNC2(&fsl_queue->queue_lock, flags);
	FUNC1(&fsl_chan->vchan.lock);
	if (FUNC6(&fsl_chan->vchan))
		FUNC0(fsl_chan);
	FUNC3(&fsl_chan->vchan.lock);
	FUNC4(&fsl_queue->queue_lock, flags);
}