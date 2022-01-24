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
typedef  int u32 ;
struct TYPE_3__ {TYPE_2__* device; } ;
struct rcar_dmac_chan {int index; TYPE_1__ chan; int /*<<< orphan*/  lock; } ;
struct rcar_dmac {int dummy; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;
struct TYPE_4__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  IRQ_NONE ; 
 int /*<<< orphan*/  RCAR_DMACHCLR ; 
 int /*<<< orphan*/  RCAR_DMACHCR ; 
 int RCAR_DMACHCR_CAE ; 
 int RCAR_DMACHCR_DE ; 
 int RCAR_DMACHCR_DSE ; 
 int RCAR_DMACHCR_TE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int FUNC1 (struct rcar_dmac_chan*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct rcar_dmac_chan*) ; 
 int /*<<< orphan*/  FUNC3 (struct rcar_dmac_chan*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (struct rcar_dmac_chan*) ; 
 int /*<<< orphan*/  FUNC5 (struct rcar_dmac_chan*) ; 
 int /*<<< orphan*/  FUNC6 (struct rcar_dmac_chan*) ; 
 int /*<<< orphan*/  FUNC7 (struct rcar_dmac*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 struct rcar_dmac* FUNC10 (TYPE_2__*) ; 

__attribute__((used)) static irqreturn_t FUNC11(int irq, void *dev)
{
	u32 mask = RCAR_DMACHCR_DSE | RCAR_DMACHCR_TE;
	struct rcar_dmac_chan *chan = dev;
	irqreturn_t ret = IRQ_NONE;
	bool reinit = false;
	u32 chcr;

	FUNC8(&chan->lock);

	chcr = FUNC1(chan, RCAR_DMACHCR);
	if (chcr & RCAR_DMACHCR_CAE) {
		struct rcar_dmac *dmac = FUNC10(chan->chan.device);

		/*
		 * We don't need to call rcar_dmac_chan_halt()
		 * because channel is already stopped in error case.
		 * We need to clear register and check DE bit as recovery.
		 */
		FUNC7(dmac, RCAR_DMACHCLR, 1 << chan->index);
		FUNC4(chan);
		reinit = true;
		goto spin_lock_end;
	}

	if (chcr & RCAR_DMACHCR_TE)
		mask |= RCAR_DMACHCR_DE;
	FUNC3(chan, RCAR_DMACHCR, chcr & ~mask);
	if (mask & RCAR_DMACHCR_DE)
		FUNC4(chan);

	if (chcr & RCAR_DMACHCR_DSE)
		ret |= FUNC5(chan);

	if (chcr & RCAR_DMACHCR_TE)
		ret |= FUNC6(chan);

spin_lock_end:
	FUNC9(&chan->lock);

	if (reinit) {
		FUNC0(chan->chan.device->dev, "Channel Address Error\n");

		FUNC2(chan);
		ret = IRQ_HANDLED;
	}

	return ret;
}