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
struct stm32_mdma_chan {TYPE_1__ vchan; } ;
struct dma_chan {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct stm32_mdma_chan*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int FUNC4 (struct stm32_mdma_chan*) ; 
 struct stm32_mdma_chan* FUNC5 (struct dma_chan*) ; 

__attribute__((used)) static int FUNC6(struct dma_chan *c)
{
	struct stm32_mdma_chan *chan = FUNC5(c);
	unsigned long flags;
	int ret;

	FUNC2(&chan->vchan.lock, flags);
	ret = FUNC4(chan);
	FUNC3(&chan->vchan.lock, flags);

	if (!ret)
		FUNC1(FUNC0(chan), "vchan %pK: pause\n", &chan->vchan);

	return ret;
}