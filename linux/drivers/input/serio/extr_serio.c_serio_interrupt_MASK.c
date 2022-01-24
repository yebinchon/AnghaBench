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
struct serio {int /*<<< orphan*/  lock; int /*<<< orphan*/  dev; TYPE_1__* drv; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;
struct TYPE_2__ {int /*<<< orphan*/  (* interrupt ) (struct serio*,unsigned char,unsigned int) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  IRQ_NONE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (struct serio*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (struct serio*,unsigned char,unsigned int) ; 

irqreturn_t FUNC6(struct serio *serio,
		unsigned char data, unsigned int dfl)
{
	unsigned long flags;
	irqreturn_t ret = IRQ_NONE;

	FUNC3(&serio->lock, flags);

        if (FUNC1(serio->drv)) {
                ret = serio->drv->interrupt(serio, data, dfl);
	} else if (!dfl && FUNC0(&serio->dev)) {
		FUNC2(serio);
		ret = IRQ_HANDLED;
	}

	FUNC4(&serio->lock, flags);

	return ret;
}