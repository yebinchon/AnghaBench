#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct k3_dma_phy {int dummy; } ;
struct TYPE_3__ {int /*<<< orphan*/  dev; } ;
struct k3_dma_dev {int /*<<< orphan*/  lock; int /*<<< orphan*/  chan_pending; TYPE_1__ slave; } ;
struct TYPE_4__ {int /*<<< orphan*/  lock; int /*<<< orphan*/  desc_issued; } ;
struct k3_dma_chan {scalar_t__ status; TYPE_2__ vc; int /*<<< orphan*/  node; struct k3_dma_phy* phy; } ;
struct dma_chan {int /*<<< orphan*/  device; } ;

/* Variables and functions */
 scalar_t__ DMA_IN_PROGRESS ; 
 scalar_t__ DMA_PAUSED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (struct k3_dma_phy*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,unsigned long) ; 
 struct k3_dma_chan* FUNC8 (struct dma_chan*) ; 
 struct k3_dma_dev* FUNC9 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC10(struct dma_chan *chan)
{
	struct k3_dma_chan *c = FUNC8(chan);
	struct k3_dma_dev *d = FUNC9(chan->device);
	struct k3_dma_phy *p = c->phy;
	unsigned long flags;

	FUNC0(d->slave.dev, "vchan %p: resume\n", &c->vc);
	FUNC5(&c->vc.lock, flags);
	if (c->status == DMA_PAUSED) {
		c->status = DMA_IN_PROGRESS;
		if (p) {
			FUNC1(p, true);
		} else if (!FUNC3(&c->vc.desc_issued)) {
			FUNC4(&d->lock);
			FUNC2(&c->node, &d->chan_pending);
			FUNC6(&d->lock);
		}
	}
	FUNC7(&c->vc.lock, flags);

	return 0;
}