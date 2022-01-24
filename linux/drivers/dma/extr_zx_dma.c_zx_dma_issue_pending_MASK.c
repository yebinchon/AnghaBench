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
struct TYPE_4__ {int /*<<< orphan*/  dev; } ;
struct zx_dma_dev {TYPE_1__ slave; int /*<<< orphan*/  lock; int /*<<< orphan*/  chan_pending; } ;
struct TYPE_5__ {int /*<<< orphan*/  lock; } ;
struct zx_dma_chan {TYPE_2__ vc; int /*<<< orphan*/  node; int /*<<< orphan*/  phy; } ;
struct dma_chan {int /*<<< orphan*/  device; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 
 struct zx_dma_chan* FUNC7 (struct dma_chan*) ; 
 struct zx_dma_dev* FUNC8 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC10 (struct zx_dma_dev*) ; 

__attribute__((used)) static void FUNC11(struct dma_chan *chan)
{
	struct zx_dma_chan *c = FUNC7(chan);
	struct zx_dma_dev *d = FUNC8(chan->device);
	unsigned long flags;
	int issue = 0;

	FUNC4(&c->vc.lock, flags);
	/* add request to vc->desc_issued */
	if (FUNC9(&c->vc)) {
		FUNC3(&d->lock);
		if (!c->phy && FUNC2(&c->node)) {
			/* if new channel, add chan_pending */
			FUNC1(&c->node, &d->chan_pending);
			issue = 1;
			FUNC0(d->slave.dev, "vchan %p: issued\n", &c->vc);
		}
		FUNC5(&d->lock);
	} else {
		FUNC0(d->slave.dev, "vchan %p: nothing to issue\n", &c->vc);
	}
	FUNC6(&c->vc.lock, flags);

	if (issue)
		FUNC10(d);
}