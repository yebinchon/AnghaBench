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
struct virt_dma_desc {int /*<<< orphan*/  tx; } ;
struct TYPE_3__ {int /*<<< orphan*/  lock; } ;
struct mtk_chan {scalar_t__ dir; TYPE_1__ vc; int /*<<< orphan*/  desc; } ;
struct dma_chan {int dummy; } ;

/* Variables and functions */
 scalar_t__ DMA_DEV_TO_MEM ; 
 scalar_t__ DMA_MEM_TO_DEV ; 
 int /*<<< orphan*/  FUNC0 (struct mtk_chan*) ; 
 int /*<<< orphan*/  FUNC1 (struct mtk_chan*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 struct mtk_chan* FUNC4 (struct dma_chan*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (TYPE_1__*) ; 
 struct virt_dma_desc* FUNC7 (TYPE_1__*) ; 

__attribute__((used)) static void FUNC8(struct dma_chan *chan)
{
	struct mtk_chan *c = FUNC4(chan);
	struct virt_dma_desc *vd;
	unsigned long flags;

	FUNC2(&c->vc.lock, flags);
	if (FUNC6(&c->vc)) {
		vd = FUNC7(&c->vc);
		c->desc = FUNC5(&vd->tx);

		if (c->dir == DMA_DEV_TO_MEM)
			FUNC0(c);
		else if (c->dir == DMA_MEM_TO_DEV)
			FUNC1(c);
	}

	FUNC3(&c->vc.lock, flags);
}