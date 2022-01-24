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
struct k3_dma_phy {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;
struct k3_dma_dev {int /*<<< orphan*/  lock; TYPE_1__ slave; } ;
struct k3_dma_chan {scalar_t__ status; int /*<<< orphan*/  node; int /*<<< orphan*/  vc; struct k3_dma_phy* phy; } ;
struct dma_chan {int /*<<< orphan*/  device; } ;

/* Variables and functions */
 scalar_t__ DMA_IN_PROGRESS ; 
 scalar_t__ DMA_PAUSED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct k3_dma_phy*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 struct k3_dma_chan* FUNC5 (struct dma_chan*) ; 
 struct k3_dma_dev* FUNC6 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC7(struct dma_chan *chan)
{
	struct k3_dma_chan *c = FUNC5(chan);
	struct k3_dma_dev *d = FUNC6(chan->device);
	struct k3_dma_phy *p = c->phy;

	FUNC0(d->slave.dev, "vchan %p: pause\n", &c->vc);
	if (c->status == DMA_IN_PROGRESS) {
		c->status = DMA_PAUSED;
		if (p) {
			FUNC1(p, false);
		} else {
			FUNC3(&d->lock);
			FUNC2(&c->node);
			FUNC4(&d->lock);
		}
	}

	return 0;
}