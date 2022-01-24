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
struct TYPE_3__ {int /*<<< orphan*/  dev; } ;
struct stm32_dma_device {TYPE_1__ ddev; } ;
struct TYPE_4__ {int /*<<< orphan*/  lock; } ;
struct stm32_dma_chan {TYPE_2__ vchan; int /*<<< orphan*/ * desc; scalar_t__ busy; int /*<<< orphan*/  id; } ;
struct dma_chan {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct stm32_dma_chan*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 struct stm32_dma_device* FUNC5 (struct stm32_dma_chan*) ; 
 int /*<<< orphan*/  FUNC6 (struct stm32_dma_chan*) ; 
 struct stm32_dma_chan* FUNC7 (struct dma_chan*) ; 
 int /*<<< orphan*/  FUNC8 (struct dma_chan*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC10(struct dma_chan *c)
{
	struct stm32_dma_chan *chan = FUNC7(c);
	struct stm32_dma_device *dmadev = FUNC5(chan);
	unsigned long flags;

	FUNC1(FUNC0(chan), "Freeing channel %d\n", chan->id);

	if (chan->busy) {
		FUNC3(&chan->vchan.lock, flags);
		FUNC6(chan);
		chan->desc = NULL;
		FUNC4(&chan->vchan.lock, flags);
	}

	FUNC2(dmadev->ddev.dev);

	FUNC9(FUNC8(c));
}