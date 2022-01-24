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
struct omap_dmadev {int /*<<< orphan*/  irq_lock; } ;
struct omap_chan {int paused; TYPE_1__* desc; } ;
struct dma_chan {int /*<<< orphan*/  device; } ;
struct TYPE_2__ {int /*<<< orphan*/  clnk_ctrl; } ;

/* Variables and functions */
 int /*<<< orphan*/  CLNK_CTRL ; 
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (struct omap_chan*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct omap_chan*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 struct omap_chan* FUNC5 (struct dma_chan*) ; 
 struct omap_dmadev* FUNC6 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC7(struct dma_chan *chan)
{
	struct omap_chan *c = FUNC5(chan);
	struct omap_dmadev *od = FUNC6(chan->device);
	unsigned long flags;
	int ret = -EINVAL;

	FUNC3(&od->irq_lock, flags);

	if (c->paused && c->desc) {
		FUNC0();

		/* Restore channel link register */
		FUNC1(c, CLNK_CTRL, c->desc->clnk_ctrl);

		FUNC2(c, c->desc);
		c->paused = false;
		ret = 0;
	}
	FUNC4(&od->irq_lock, flags);

	return ret;
}