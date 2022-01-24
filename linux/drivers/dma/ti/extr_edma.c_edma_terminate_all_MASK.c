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
struct TYPE_5__ {int /*<<< orphan*/  lock; } ;
struct edma_chan {TYPE_2__ vchan; TYPE_1__* edesc; int /*<<< orphan*/  tc; } ;
struct dma_chan {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  vdesc; scalar_t__ cyclic; } ;

/* Variables and functions */
 int /*<<< orphan*/  EVENTQ_DEFAULT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct edma_chan*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct edma_chan*) ; 
 int /*<<< orphan*/  head ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 struct edma_chan* FUNC5 (struct dma_chan*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC9(struct dma_chan *chan)
{
	struct edma_chan *echan = FUNC5(chan);
	unsigned long flags;
	FUNC0(head);

	FUNC3(&echan->vchan.lock, flags);

	/*
	 * Stop DMA activity: we assume the callback will not be called
	 * after edma_dma() returns (even if it does, it will see
	 * echan->edesc is NULL and exit.)
	 */
	if (echan->edesc) {
		FUNC2(echan);
		/* Move the cyclic channel back to default queue */
		if (!echan->tc && echan->edesc->cyclic)
			FUNC1(echan, EVENTQ_DEFAULT);

		FUNC8(&echan->edesc->vdesc);
		echan->edesc = NULL;
	}

	FUNC7(&echan->vchan, &head);
	FUNC4(&echan->vchan.lock, flags);
	FUNC6(&echan->vchan, &head);

	return 0;
}