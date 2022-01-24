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
struct TYPE_4__ {int /*<<< orphan*/  lock; } ;
struct TYPE_5__ {TYPE_1__ vchan; } ;
struct axi_dmac {TYPE_2__ chan; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 unsigned int AXI_DMAC_IRQ_EOT ; 
 unsigned int AXI_DMAC_IRQ_SOT ; 
 int /*<<< orphan*/  AXI_DMAC_REG_IRQ_PENDING ; 
 int /*<<< orphan*/  AXI_DMAC_REG_TRANSFER_DONE ; 
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  IRQ_NONE ; 
 unsigned int FUNC0 (struct axi_dmac*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 int FUNC2 (TYPE_2__*,unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (struct axi_dmac*,int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static irqreturn_t FUNC6(int irq, void *devid)
{
	struct axi_dmac *dmac = devid;
	unsigned int pending;
	bool start_next = false;

	pending = FUNC0(dmac, AXI_DMAC_REG_IRQ_PENDING);
	if (!pending)
		return IRQ_NONE;

	FUNC3(dmac, AXI_DMAC_REG_IRQ_PENDING, pending);

	FUNC4(&dmac->chan.vchan.lock);
	/* One or more transfers have finished */
	if (pending & AXI_DMAC_IRQ_EOT) {
		unsigned int completed;

		completed = FUNC0(dmac, AXI_DMAC_REG_TRANSFER_DONE);
		start_next = FUNC2(&dmac->chan, completed);
	}
	/* Space has become available in the descriptor queue */
	if ((pending & AXI_DMAC_IRQ_SOT) || start_next)
		FUNC1(&dmac->chan);
	FUNC5(&dmac->chan.vchan.lock);

	return IRQ_HANDLED;
}