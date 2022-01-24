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
struct zynqmp_dma_chan {int /*<<< orphan*/  dev; int /*<<< orphan*/  sw_desc_pool; int /*<<< orphan*/  desc_pool_p; int /*<<< orphan*/  desc_pool_v; int /*<<< orphan*/  lock; } ;
struct dma_chan {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct zynqmp_dma_chan*) ; 
 int ZYNQMP_DMA_NUM_DESCS ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 
 struct zynqmp_dma_chan* FUNC7 (struct dma_chan*) ; 
 int /*<<< orphan*/  FUNC8 (struct zynqmp_dma_chan*) ; 

__attribute__((used)) static void FUNC9(struct dma_chan *dchan)
{
	struct zynqmp_dma_chan *chan = FUNC7(dchan);
	unsigned long irqflags;

	FUNC5(&chan->lock, irqflags);
	FUNC8(chan);
	FUNC6(&chan->lock, irqflags);
	FUNC1(chan->dev,
		(2 * FUNC0(chan) * ZYNQMP_DMA_NUM_DESCS),
		chan->desc_pool_v, chan->desc_pool_p);
	FUNC2(chan->sw_desc_pool);
	FUNC3(chan->dev);
	FUNC4(chan->dev);
}