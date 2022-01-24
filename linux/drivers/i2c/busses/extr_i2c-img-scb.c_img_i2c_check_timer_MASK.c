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
struct timer_list {int dummy; } ;
struct TYPE_3__ {int /*<<< orphan*/  parent; } ;
struct TYPE_4__ {TYPE_1__ dev; } ;
struct img_i2c {int int_enable; int /*<<< orphan*/  lock; TYPE_2__ adap; } ;

/* Variables and functions */
 int INT_SLAVE_EVENT ; 
 unsigned int LINESTAT_ABORT_DET ; 
 int /*<<< orphan*/  SCB_INT_MASK_REG ; 
 int /*<<< orphan*/  SCB_STATUS_REG ; 
 int /*<<< orphan*/  check_timer ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 struct img_i2c* FUNC1 (int /*<<< orphan*/ ,struct timer_list*,int /*<<< orphan*/ ) ; 
 struct img_i2c* i2c ; 
 unsigned int FUNC2 (struct img_i2c*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct img_i2c*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void FUNC6(struct timer_list *t)
{
	struct img_i2c *i2c = FUNC1(i2c, t, check_timer);
	unsigned long flags;
	unsigned int line_status;

	FUNC4(&i2c->lock, flags);
	line_status = FUNC2(i2c, SCB_STATUS_REG);

	/* check for an abort condition */
	if (line_status & LINESTAT_ABORT_DET) {
		FUNC0(i2c->adap.dev.parent,
			"abort condition detected by check timer\n");
		/* enable slave event interrupt mask to trigger irq */
		FUNC3(i2c, SCB_INT_MASK_REG,
			       i2c->int_enable | INT_SLAVE_EVENT);
	}

	FUNC5(&i2c->lock, flags);
}