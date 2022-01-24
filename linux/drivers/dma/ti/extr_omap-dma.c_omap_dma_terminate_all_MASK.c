#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  lock; } ;
struct omap_chan {int paused; int cyclic; TYPE_2__ vc; TYPE_1__* desc; } ;
struct dma_chan {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  vd; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  head ; 
 int /*<<< orphan*/  FUNC1 (struct omap_chan*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 struct omap_chan* FUNC4 (struct dma_chan*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC8(struct dma_chan *chan)
{
	struct omap_chan *c = FUNC4(chan);
	unsigned long flags;
	FUNC0(head);

	FUNC2(&c->vc.lock, flags);

	/*
	 * Stop DMA activity: we assume the callback will not be called
	 * after omap_dma_stop() returns (even if it does, it will see
	 * c->desc is NULL and exit.)
	 */
	if (c->desc) {
		FUNC7(&c->desc->vd);
		c->desc = NULL;
		/* Avoid stopping the dma twice */
		if (!c->paused)
			FUNC1(c);
	}

	c->cyclic = false;
	c->paused = false;

	FUNC6(&c->vc, &head);
	FUNC3(&c->vc.lock, flags);
	FUNC5(&c->vc, &head);

	return 0;
}