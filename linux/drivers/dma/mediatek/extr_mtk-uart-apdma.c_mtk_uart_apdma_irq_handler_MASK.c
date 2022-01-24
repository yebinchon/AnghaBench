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
struct mtk_chan {scalar_t__ dir; TYPE_1__ vc; } ;
struct dma_chan {int dummy; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 scalar_t__ DMA_DEV_TO_MEM ; 
 scalar_t__ DMA_MEM_TO_DEV ; 
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  FUNC0 (struct mtk_chan*) ; 
 int /*<<< orphan*/  FUNC1 (struct mtk_chan*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 struct mtk_chan* FUNC4 (struct dma_chan*) ; 

__attribute__((used)) static irqreturn_t FUNC5(int irq, void *dev_id)
{
	struct dma_chan *chan = (struct dma_chan *)dev_id;
	struct mtk_chan *c = FUNC4(chan);
	unsigned long flags;

	FUNC2(&c->vc.lock, flags);
	if (c->dir == DMA_DEV_TO_MEM)
		FUNC0(c);
	else if (c->dir == DMA_MEM_TO_DEV)
		FUNC1(c);
	FUNC3(&c->vc.lock, flags);

	return IRQ_HANDLED;
}