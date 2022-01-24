#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  lock; } ;
struct stm32_mdma_chan {TYPE_1__ vchan; int /*<<< orphan*/ * desc; scalar_t__ busy; } ;
struct dma_chan {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  head ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (struct stm32_mdma_chan*) ; 
 struct stm32_mdma_chan* FUNC4 (struct dma_chan*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC7(struct dma_chan *c)
{
	struct stm32_mdma_chan *chan = FUNC4(c);
	unsigned long flags;
	FUNC0(head);

	FUNC1(&chan->vchan.lock, flags);
	if (chan->busy) {
		FUNC3(chan);
		chan->desc = NULL;
	}
	FUNC6(&chan->vchan, &head);
	FUNC2(&chan->vchan.lock, flags);

	FUNC5(&chan->vchan, &head);

	return 0;
}