#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct zx_dma_phy {int /*<<< orphan*/ * ds_done; int /*<<< orphan*/ * ds_run; int /*<<< orphan*/ * vchan; } ;
struct TYPE_5__ {int /*<<< orphan*/  dev; } ;
struct zx_dma_dev {int /*<<< orphan*/  lock; TYPE_1__ slave; } ;
struct TYPE_6__ {int /*<<< orphan*/  lock; } ;
struct zx_dma_chan {TYPE_2__ vc; struct zx_dma_phy* phy; int /*<<< orphan*/  node; } ;
struct dma_chan {int /*<<< orphan*/  device; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,TYPE_2__*) ; 
 int /*<<< orphan*/  head ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 
 struct zx_dma_chan* FUNC7 (struct dma_chan*) ; 
 struct zx_dma_dev* FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_2__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_2__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (struct zx_dma_phy*,struct zx_dma_dev*) ; 

__attribute__((used)) static int FUNC12(struct dma_chan *chan)
{
	struct zx_dma_chan *c = FUNC7(chan);
	struct zx_dma_dev *d = FUNC8(chan->device);
	struct zx_dma_phy *p = c->phy;
	unsigned long flags;
	FUNC0(head);

	FUNC1(d->slave.dev, "vchan %p: terminate all\n", &c->vc);

	/* Prevent this channel being scheduled */
	FUNC3(&d->lock);
	FUNC2(&c->node);
	FUNC5(&d->lock);

	/* Clear the tx descriptor lists */
	FUNC4(&c->vc.lock, flags);
	FUNC10(&c->vc, &head);
	if (p) {
		/* vchan is assigned to a pchan - stop the channel */
		FUNC11(p, d);
		c->phy = NULL;
		p->vchan = NULL;
		p->ds_run = NULL;
		p->ds_done = NULL;
	}
	FUNC6(&c->vc.lock, flags);
	FUNC9(&c->vc, &head);

	return 0;
}