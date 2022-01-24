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
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;
struct omap_dmadev {unsigned int irq_enable_mask; int /*<<< orphan*/  irq_lock; TYPE_1__ ddev; struct omap_chan** lch_map; } ;
struct omap_chan {int dummy; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 unsigned int FUNC0 (unsigned int) ; 
 int /*<<< orphan*/  IRQSTATUS_L1 ; 
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  IRQ_NONE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,unsigned int) ; 
 unsigned int FUNC2 (unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (unsigned int,unsigned int,struct omap_chan*) ; 
 unsigned int FUNC4 (struct omap_chan*) ; 
 unsigned int FUNC5 (struct omap_dmadev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct omap_dmadev*,int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static irqreturn_t FUNC9(int irq, void *devid)
{
	struct omap_dmadev *od = devid;
	unsigned status, channel;

	FUNC7(&od->irq_lock);

	status = FUNC5(od, IRQSTATUS_L1);
	status &= od->irq_enable_mask;
	if (status == 0) {
		FUNC8(&od->irq_lock);
		return IRQ_NONE;
	}

	while ((channel = FUNC2(status)) != 0) {
		unsigned mask, csr;
		struct omap_chan *c;

		channel -= 1;
		mask = FUNC0(channel);
		status &= ~mask;

		c = od->lch_map[channel];
		if (c == NULL) {
			/* This should never happen */
			FUNC1(od->ddev.dev, "invalid channel %u\n", channel);
			continue;
		}

		csr = FUNC4(c);
		FUNC6(od, IRQSTATUS_L1, mask);

		FUNC3(channel, csr, c);
	}

	FUNC8(&od->irq_lock);

	return IRQ_HANDLED;
}