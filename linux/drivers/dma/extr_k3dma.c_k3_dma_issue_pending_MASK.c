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
struct k3_dma_dev {TYPE_1__ slave; int /*<<< orphan*/  lock; int /*<<< orphan*/  task; int /*<<< orphan*/  chan_pending; } ;
struct TYPE_5__ {int /*<<< orphan*/  lock; } ;
struct k3_dma_chan {TYPE_2__ vc; int /*<<< orphan*/  node; int /*<<< orphan*/  phy; } ;
struct dma_chan {int /*<<< orphan*/  device; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 struct k3_dma_chan* FUNC8 (struct dma_chan*) ; 
 struct k3_dma_dev* FUNC9 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC10 (TYPE_2__*) ; 

__attribute__((used)) static void FUNC11(struct dma_chan *chan)
{
	struct k3_dma_chan *c = FUNC8(chan);
	struct k3_dma_dev *d = FUNC9(chan->device);
	unsigned long flags;

	FUNC4(&c->vc.lock, flags);
	/* add request to vc->desc_issued */
	if (FUNC10(&c->vc)) {
		FUNC3(&d->lock);
		if (!c->phy) {
			if (FUNC2(&c->node)) {
				/* if new channel, add chan_pending */
				FUNC1(&c->node, &d->chan_pending);
				/* check in tasklet */
				FUNC7(&d->task);
				FUNC0(d->slave.dev, "vchan %p: issued\n", &c->vc);
			}
		}
		FUNC5(&d->lock);
	} else
		FUNC0(d->slave.dev, "vchan %p: nothing to issue\n", &c->vc);
	FUNC6(&c->vc.lock, flags);
}