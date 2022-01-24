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
struct TYPE_3__ {int /*<<< orphan*/  domain; } ;
struct TYPE_4__ {TYPE_1__ irq; } ;
struct gpio_rcar_priv {TYPE_2__ gpio_chip; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (unsigned int) ; 
 int /*<<< orphan*/  INTCLR ; 
 int /*<<< orphan*/  INTDT ; 
 int /*<<< orphan*/  INTMSK ; 
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  IRQ_NONE ; 
 unsigned int FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (struct gpio_rcar_priv*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct gpio_rcar_priv*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,unsigned int) ; 

__attribute__((used)) static irqreturn_t FUNC6(int irq, void *dev_id)
{
	struct gpio_rcar_priv *p = dev_id;
	u32 pending;
	unsigned int offset, irqs_handled = 0;

	while ((pending = FUNC3(p, INTDT) &
			  FUNC3(p, INTMSK))) {
		offset = FUNC1(pending);
		FUNC4(p, INTCLR, FUNC0(offset));
		FUNC2(FUNC5(p->gpio_chip.irq.domain,
						    offset));
		irqs_handled++;
	}

	return irqs_handled ? IRQ_HANDLED : IRQ_NONE;
}