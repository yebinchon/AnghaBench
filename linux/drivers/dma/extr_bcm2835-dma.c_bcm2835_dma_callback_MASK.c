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
struct bcm2835_desc {int /*<<< orphan*/  vd; scalar_t__ cyclic; } ;
struct TYPE_2__ {int /*<<< orphan*/  lock; } ;
struct bcm2835_chan {int irq_flags; TYPE_1__ vc; struct bcm2835_desc* desc; scalar_t__ chan_base; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 unsigned long BCM2835_DMA_ACTIVE ; 
 scalar_t__ BCM2835_DMA_ADDR ; 
 scalar_t__ BCM2835_DMA_CS ; 
 unsigned long BCM2835_DMA_INT ; 
 int IRQF_SHARED ; 
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  IRQ_NONE ; 
 int /*<<< orphan*/  FUNC0 (struct bcm2835_chan*) ; 
 unsigned long FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (unsigned long,scalar_t__) ; 

__attribute__((used)) static irqreturn_t FUNC7(int irq, void *data)
{
	struct bcm2835_chan *c = data;
	struct bcm2835_desc *d;
	unsigned long flags;

	/* check the shared interrupt */
	if (c->irq_flags & IRQF_SHARED) {
		/* check if the interrupt is enabled */
		flags = FUNC1(c->chan_base + BCM2835_DMA_CS);
		/* if not set then we are not the reason for the irq */
		if (!(flags & BCM2835_DMA_INT))
			return IRQ_NONE;
	}

	FUNC2(&c->vc.lock, flags);

	/*
	 * Clear the INT flag to receive further interrupts. Keep the channel
	 * active in case the descriptor is cyclic or in case the client has
	 * already terminated the descriptor and issued a new one. (May happen
	 * if this IRQ handler is threaded.) If the channel is finished, it
	 * will remain idle despite the ACTIVE flag being set.
	 */
	FUNC6(BCM2835_DMA_INT | BCM2835_DMA_ACTIVE,
	       c->chan_base + BCM2835_DMA_CS);

	d = c->desc;

	if (d) {
		if (d->cyclic) {
			/* call the cyclic callback */
			FUNC5(&d->vd);
		} else if (!FUNC1(c->chan_base + BCM2835_DMA_ADDR)) {
			FUNC4(&c->desc->vd);
			FUNC0(c);
		}
	}

	FUNC3(&c->vc.lock, flags);

	return IRQ_HANDLED;
}