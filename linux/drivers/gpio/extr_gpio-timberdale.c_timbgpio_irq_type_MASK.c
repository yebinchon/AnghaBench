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
typedef  int u32 ;
struct TYPE_2__ {int ngpio; } ;
struct timbgpio {int irq_base; int /*<<< orphan*/  lock; scalar_t__ membase; TYPE_1__ gpio; } ;
struct irq_data {int irq; } ;

/* Variables and functions */
 int EINVAL ; 
 unsigned int IRQ_TYPE_EDGE_BOTH ; 
 unsigned int IRQ_TYPE_EDGE_FALLING ; 
 unsigned int IRQ_TYPE_LEVEL_HIGH ; 
 unsigned int IRQ_TYPE_LEVEL_LOW ; 
 scalar_t__ TGPIO_BFLR ; 
 scalar_t__ TGPIO_FLR ; 
 scalar_t__ TGPIO_ICR ; 
 scalar_t__ TGPIO_LVR ; 
 scalar_t__ TGPIO_VER ; 
 int FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int,scalar_t__) ; 
 struct timbgpio* FUNC2 (struct irq_data*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static int FUNC5(struct irq_data *d, unsigned trigger)
{
	struct timbgpio *tgpio = FUNC2(d);
	int offset = d->irq - tgpio->irq_base;
	unsigned long flags;
	u32 lvr, flr, bflr = 0;
	u32 ver;
	int ret = 0;

	if (offset < 0 || offset > tgpio->gpio.ngpio)
		return -EINVAL;

	ver = FUNC0(tgpio->membase + TGPIO_VER);

	FUNC3(&tgpio->lock, flags);

	lvr = FUNC0(tgpio->membase + TGPIO_LVR);
	flr = FUNC0(tgpio->membase + TGPIO_FLR);
	if (ver > 2)
		bflr = FUNC0(tgpio->membase + TGPIO_BFLR);

	if (trigger & (IRQ_TYPE_LEVEL_HIGH | IRQ_TYPE_LEVEL_LOW)) {
		bflr &= ~(1 << offset);
		flr &= ~(1 << offset);
		if (trigger & IRQ_TYPE_LEVEL_HIGH)
			lvr |= 1 << offset;
		else
			lvr &= ~(1 << offset);
	}

	if ((trigger & IRQ_TYPE_EDGE_BOTH) == IRQ_TYPE_EDGE_BOTH) {
		if (ver < 3) {
			ret = -EINVAL;
			goto out;
		} else {
			flr |= 1 << offset;
			bflr |= 1 << offset;
		}
	} else {
		bflr &= ~(1 << offset);
		flr |= 1 << offset;
		if (trigger & IRQ_TYPE_EDGE_FALLING)
			lvr &= ~(1 << offset);
		else
			lvr |= 1 << offset;
	}

	FUNC1(lvr, tgpio->membase + TGPIO_LVR);
	FUNC1(flr, tgpio->membase + TGPIO_FLR);
	if (ver > 2)
		FUNC1(bflr, tgpio->membase + TGPIO_BFLR);

	FUNC1(1 << offset, tgpio->membase + TGPIO_ICR);

out:
	FUNC4(&tgpio->lock, flags);
	return ret;
}