#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {TYPE_1__* device; } ;
struct TYPE_7__ {int /*<<< orphan*/  lock; TYPE_2__ chan; } ;
struct mtk_chan {scalar_t__ dir; TYPE_3__ vc; int /*<<< orphan*/  irq; scalar_t__ base; } ;
struct dma_chan {int dummy; } ;
struct TYPE_5__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 scalar_t__ DMA_DEV_TO_MEM ; 
 scalar_t__ DMA_MEM_TO_DEV ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  VFF_DEBUG_STATUS ; 
 scalar_t__ VFF_EN ; 
 scalar_t__ VFF_FLUSH ; 
 unsigned int VFF_FLUSH_B ; 
 scalar_t__ VFF_INT_EN ; 
 unsigned int VFF_INT_EN_CLR_B ; 
 scalar_t__ VFF_INT_FLAG ; 
 unsigned int VFF_RX_INT_CLR_B ; 
 scalar_t__ VFF_STOP ; 
 unsigned int VFF_STOP_B ; 
 unsigned int VFF_STOP_CLR_B ; 
 unsigned int VFF_TX_INT_CLR_B ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  head ; 
 int /*<<< orphan*/  FUNC2 (struct mtk_chan*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct mtk_chan*,scalar_t__,unsigned int) ; 
 int /*<<< orphan*/  readl ; 
 int FUNC4 (int /*<<< orphan*/ ,scalar_t__,unsigned int,int,int,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 struct mtk_chan* FUNC8 (struct dma_chan*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_3__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_3__*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC11(struct dma_chan *chan)
{
	struct mtk_chan *c = FUNC8(chan);
	unsigned long flags;
	unsigned int status;
	FUNC0(head);
	int ret;

	FUNC3(c, VFF_FLUSH, VFF_FLUSH_B);

	ret = FUNC4(readl, c->base + VFF_FLUSH,
			  status, status != VFF_FLUSH_B, 10, 100);
	if (ret)
		FUNC1(c->vc.chan.device->dev, "flush: fail, status=0x%x\n",
			FUNC2(c, VFF_DEBUG_STATUS));

	/*
	 * Stop need 3 steps.
	 * 1. set stop to 1
	 * 2. wait en to 0
	 * 3. set stop as 0
	 */
	FUNC3(c, VFF_STOP, VFF_STOP_B);
	ret = FUNC4(readl, c->base + VFF_EN,
			  status, !status, 10, 100);
	if (ret)
		FUNC1(c->vc.chan.device->dev, "stop: fail, status=0x%x\n",
			FUNC2(c, VFF_DEBUG_STATUS));

	FUNC3(c, VFF_STOP, VFF_STOP_CLR_B);
	FUNC3(c, VFF_INT_EN, VFF_INT_EN_CLR_B);

	if (c->dir == DMA_DEV_TO_MEM)
		FUNC3(c, VFF_INT_FLAG, VFF_RX_INT_CLR_B);
	else if (c->dir == DMA_MEM_TO_DEV)
		FUNC3(c, VFF_INT_FLAG, VFF_TX_INT_CLR_B);

	FUNC7(c->irq);

	FUNC5(&c->vc.lock, flags);
	FUNC10(&c->vc, &head);
	FUNC9(&c->vc, &head);
	FUNC6(&c->vc.lock, flags);

	return 0;
}