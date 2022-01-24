#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct k3_dma_phy {int /*<<< orphan*/ * ds_done; TYPE_2__* ds_run; int /*<<< orphan*/ * vchan; } ;
struct TYPE_6__ {int /*<<< orphan*/  dev; } ;
struct k3_dma_dev {int /*<<< orphan*/  lock; TYPE_1__ slave; } ;
struct TYPE_8__ {int /*<<< orphan*/  lock; } ;
struct k3_dma_chan {TYPE_3__ vc; struct k3_dma_phy* phy; int /*<<< orphan*/  node; } ;
struct dma_chan {int /*<<< orphan*/  device; } ;
struct TYPE_7__ {int /*<<< orphan*/  vd; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,TYPE_3__*) ; 
 int /*<<< orphan*/  head ; 
 int /*<<< orphan*/  FUNC2 (struct k3_dma_phy*,struct k3_dma_dev*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,unsigned long) ; 
 struct k3_dma_chan* FUNC8 (struct dma_chan*) ; 
 struct k3_dma_dev* FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_3__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_3__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC13(struct dma_chan *chan)
{
	struct k3_dma_chan *c = FUNC8(chan);
	struct k3_dma_dev *d = FUNC9(chan->device);
	struct k3_dma_phy *p = c->phy;
	unsigned long flags;
	FUNC0(head);

	FUNC1(d->slave.dev, "vchan %p: terminate all\n", &c->vc);

	/* Prevent this channel being scheduled */
	FUNC4(&d->lock);
	FUNC3(&c->node);
	FUNC6(&d->lock);

	/* Clear the tx descriptor lists */
	FUNC5(&c->vc.lock, flags);
	FUNC11(&c->vc, &head);
	if (p) {
		/* vchan is assigned to a pchan - stop the channel */
		FUNC2(p, d);
		c->phy = NULL;
		p->vchan = NULL;
		if (p->ds_run) {
			FUNC12(&p->ds_run->vd);
			p->ds_run = NULL;
		}
		p->ds_done = NULL;
	}
	FUNC7(&c->vc.lock, flags);
	FUNC10(&c->vc, &head);

	return 0;
}