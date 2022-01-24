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
struct stm32_dmamux_data {int /*<<< orphan*/  lock; int /*<<< orphan*/  dma_inuse; int /*<<< orphan*/  iomem; } ;
struct stm32_dmamux {int /*<<< orphan*/  chan_id; int /*<<< orphan*/  master; int /*<<< orphan*/  request; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct device*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct stm32_dmamux_data* FUNC3 (struct device*) ; 
 int /*<<< orphan*/  FUNC4 (struct stm32_dmamux*) ; 
 int /*<<< orphan*/  FUNC5 (struct device*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC9(struct device *dev, void *route_data)
{
	struct stm32_dmamux_data *dmamux = FUNC3(dev);
	struct stm32_dmamux *mux = route_data;
	unsigned long flags;

	/* Clear dma request */
	FUNC6(&dmamux->lock, flags);

	FUNC8(dmamux->iomem, FUNC0(mux->chan_id), 0);
	FUNC1(mux->chan_id, dmamux->dma_inuse);

	FUNC5(dev);

	FUNC7(&dmamux->lock, flags);

	FUNC2(dev, "Unmapping DMAMUX(%u) to DMA%u(%u)\n",
		mux->request, mux->master, mux->chan_id);

	FUNC4(mux);
}