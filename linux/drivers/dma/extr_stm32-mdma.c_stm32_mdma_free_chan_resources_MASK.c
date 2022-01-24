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
struct TYPE_4__ {int /*<<< orphan*/  dev; } ;
struct stm32_mdma_device {TYPE_2__ ddev; } ;
struct TYPE_3__ {int /*<<< orphan*/  lock; } ;
struct stm32_mdma_chan {int /*<<< orphan*/ * desc_pool; TYPE_1__ vchan; int /*<<< orphan*/ * desc; scalar_t__ busy; int /*<<< orphan*/  id; } ;
struct dma_chan {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct stm32_mdma_chan*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 struct stm32_mdma_device* FUNC6 (struct stm32_mdma_chan*) ; 
 int /*<<< orphan*/  FUNC7 (struct stm32_mdma_chan*) ; 
 struct stm32_mdma_chan* FUNC8 (struct dma_chan*) ; 
 int /*<<< orphan*/  FUNC9 (struct dma_chan*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC11(struct dma_chan *c)
{
	struct stm32_mdma_chan *chan = FUNC8(c);
	struct stm32_mdma_device *dmadev = FUNC6(chan);
	unsigned long flags;

	FUNC1(FUNC0(chan), "Freeing channel %d\n", chan->id);

	if (chan->busy) {
		FUNC4(&chan->vchan.lock, flags);
		FUNC7(chan);
		chan->desc = NULL;
		FUNC5(&chan->vchan.lock, flags);
	}

	FUNC3(dmadev->ddev.dev);
	FUNC10(FUNC9(c));
	FUNC2(chan->desc_pool);
	chan->desc_pool = NULL;
}