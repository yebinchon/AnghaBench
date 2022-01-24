#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
struct msic_gpio {int trig_type; int /*<<< orphan*/  buslock; scalar_t__ trig_change_mask; } ;
struct irq_data {int dummy; } ;

/* Variables and functions */
 int IRQ_TYPE_EDGE_FALLING ; 
 int IRQ_TYPE_EDGE_RISING ; 
 int /*<<< orphan*/  MSIC_GPIO_INTCNT_MASK ; 
 int /*<<< orphan*/  MSIC_GPIO_TRIG_FALL ; 
 int /*<<< orphan*/  MSIC_GPIO_TRIG_RISE ; 
 int FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct msic_gpio* FUNC2 (struct irq_data*) ; 
 int FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC5(struct irq_data *data)
{
	struct msic_gpio *mg = FUNC2(data);
	int offset;
	int reg;
	u8 trig = 0;

	/* We can only get one change at a time as the buslock covers the
	   entire transaction. The irq_desc->lock is dropped before we are
	   called but that is fine */
	if (mg->trig_change_mask) {
		offset = FUNC0(mg->trig_change_mask);

		reg = FUNC3(offset);
		if (reg < 0)
			goto out;

		if (mg->trig_type & IRQ_TYPE_EDGE_RISING)
			trig |= MSIC_GPIO_TRIG_RISE;
		if (mg->trig_type & IRQ_TYPE_EDGE_FALLING)
			trig |= MSIC_GPIO_TRIG_FALL;

		FUNC1(reg, trig, MSIC_GPIO_INTCNT_MASK);
		mg->trig_change_mask = 0;
	}
out:
	FUNC4(&mg->buslock);
}