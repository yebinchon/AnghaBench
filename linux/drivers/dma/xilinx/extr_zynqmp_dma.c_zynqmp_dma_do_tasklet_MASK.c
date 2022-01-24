#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  scalar_t__ u32 ;
struct zynqmp_dma_chan {int err; int /*<<< orphan*/  lock; scalar_t__ idle; scalar_t__ regs; } ;

/* Variables and functions */
 scalar_t__ ZYNQMP_DMA_IRQ_DST_ACCT ; 
 scalar_t__ FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (struct zynqmp_dma_chan*) ; 
 int /*<<< orphan*/  FUNC4 (struct zynqmp_dma_chan*) ; 
 int /*<<< orphan*/  FUNC5 (struct zynqmp_dma_chan*) ; 
 int /*<<< orphan*/  FUNC6 (struct zynqmp_dma_chan*) ; 

__attribute__((used)) static void FUNC7(unsigned long data)
{
	struct zynqmp_dma_chan *chan = (struct zynqmp_dma_chan *)data;
	u32 count;
	unsigned long irqflags;

	FUNC1(&chan->lock, irqflags);

	if (chan->err) {
		FUNC5(chan);
		chan->err = false;
		goto unlock;
	}

	count = FUNC0(chan->regs + ZYNQMP_DMA_IRQ_DST_ACCT);

	while (count) {
		FUNC4(chan);
		FUNC3(chan);
		count--;
	}

	if (chan->idle)
		FUNC6(chan);

unlock:
	FUNC2(&chan->lock, irqflags);
}