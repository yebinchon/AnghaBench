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
struct stm32_mdma_chan {TYPE_1__ vchan; int /*<<< orphan*/  busy; int /*<<< orphan*/  desc; } ;
struct dma_chan {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct stm32_mdma_chan*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (struct stm32_mdma_chan*) ; 
 struct stm32_mdma_chan* FUNC5 (struct dma_chan*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 

__attribute__((used)) static void FUNC7(struct dma_chan *c)
{
	struct stm32_mdma_chan *chan = FUNC5(c);
	unsigned long flags;

	FUNC2(&chan->vchan.lock, flags);

	if (!FUNC6(&chan->vchan))
		goto end;

	FUNC1(FUNC0(chan), "vchan %pK: issued\n", &chan->vchan);

	if (!chan->desc && !chan->busy)
		FUNC4(chan);

end:
	FUNC3(&chan->vchan.lock, flags);
}