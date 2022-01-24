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
struct q40kbd {int /*<<< orphan*/  lock; int /*<<< orphan*/  port; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 int /*<<< orphan*/  INTERRUPT_REG ; 
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  KEYBOARD_UNLOCK_REG ; 
 int /*<<< orphan*/  KEYCODE_REG ; 
 int Q40_IRQ_KEYB_MASK ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static irqreturn_t FUNC5(int irq, void *dev_id)
{
	struct q40kbd *q40kbd = dev_id;
	unsigned long flags;

	FUNC3(&q40kbd->lock, flags);

	if (Q40_IRQ_KEYB_MASK & FUNC0(INTERRUPT_REG))
		FUNC2(q40kbd->port, FUNC0(KEYCODE_REG), 0);

	FUNC1(-1, KEYBOARD_UNLOCK_REG);

	FUNC4(&q40kbd->lock, flags);

	return IRQ_HANDLED;
}