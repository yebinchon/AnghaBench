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
typedef  int u8 ;
typedef  int u32 ;
struct siox_device {int /*<<< orphan*/  dev; } ;
struct irq_domain {int dummy; } ;
struct TYPE_3__ {struct irq_domain* domain; } ;
struct TYPE_4__ {TYPE_1__ irq; } ;
struct gpio_siox_ddata {int* getdata; int* irq_type; int irq_status; int irq_enable; int /*<<< orphan*/  irqlock; TYPE_2__ gchip; int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 int IRQ_TYPE_EDGE_FALLING ; 
 int IRQ_TYPE_EDGE_RISING ; 
 int IRQ_TYPE_LEVEL_HIGH ; 
 int IRQ_TYPE_LEVEL_LOW ; 
 struct gpio_siox_ddata* FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (unsigned int) ; 
 unsigned int FUNC2 (struct irq_domain*,size_t) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC7(struct siox_device *sdevice, const u8 buf[])
{
	struct gpio_siox_ddata *ddata = FUNC0(&sdevice->dev);
	size_t offset;
	u32 trigger;

	FUNC3(&ddata->lock);

	FUNC5(&ddata->irqlock);

	for (offset = 0; offset < 12; ++offset) {
		unsigned int bitpos = 11 - offset;
		unsigned int gpiolevel = buf[bitpos / 8] & (1 << bitpos % 8);
		unsigned int prev_level =
			ddata->getdata[bitpos / 8] & (1 << (bitpos % 8));
		u32 irq_type = ddata->irq_type[offset];

		if (gpiolevel) {
			if ((irq_type & IRQ_TYPE_LEVEL_HIGH) ||
			    ((irq_type & IRQ_TYPE_EDGE_RISING) && !prev_level))
				ddata->irq_status |= 1 << offset;
		} else {
			if ((irq_type & IRQ_TYPE_LEVEL_LOW) ||
			    ((irq_type & IRQ_TYPE_EDGE_FALLING) && prev_level))
				ddata->irq_status |= 1 << offset;
		}
	}

	trigger = ddata->irq_status & ddata->irq_enable;

	FUNC6(&ddata->irqlock);

	ddata->getdata[0] = buf[0];
	ddata->getdata[1] = buf[1];
	ddata->getdata[2] = buf[2];

	FUNC4(&ddata->lock);

	for (offset = 0; offset < 12; ++offset) {
		if (trigger & (1 << offset)) {
			struct irq_domain *irqdomain = ddata->gchip.irq.domain;
			unsigned int irq = FUNC2(irqdomain, offset);

			/*
			 * Conceptually handle_nested_irq should call the flow
			 * handler of the irq chip. But it doesn't, so we have
			 * to clean the irq_status here.
			 */
			FUNC5(&ddata->irqlock);
			ddata->irq_status &= ~(1 << offset);
			FUNC6(&ddata->irqlock);

			FUNC1(irq);
		}
	}

	return 0;
}