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
typedef  scalar_t__ u64 ;
struct TYPE_2__ {scalar_t__ timeout; } ;
struct octeon_i2c {int broken_irq_mode; int /*<<< orphan*/  dev; scalar_t__ broken_irq_check; int /*<<< orphan*/  (* hlc_int_disable ) (struct octeon_i2c*) ;TYPE_1__ adap; int /*<<< orphan*/  queue; int /*<<< orphan*/  (* hlc_int_enable ) (struct octeon_i2c*) ;} ;

/* Variables and functions */
 int ETIMEDOUT ; 
 int I2C_OCTEON_EVENT_WAIT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (struct octeon_i2c*) ; 
 scalar_t__ FUNC3 (struct octeon_i2c*) ; 
 int /*<<< orphan*/  FUNC4 (struct octeon_i2c*) ; 
 int /*<<< orphan*/  FUNC5 (struct octeon_i2c*) ; 
 scalar_t__ FUNC6 (scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (int,int) ; 
 int FUNC8 (int /*<<< orphan*/ ,scalar_t__,scalar_t__) ; 

__attribute__((used)) static int FUNC9(struct octeon_i2c *i2c)
{
	int time_left;

	/*
	 * Some cn38xx boards don't assert the irq in the interrupt
	 * controller. So we must poll for the valid bit change.
	 */
	if (i2c->broken_irq_mode) {
		u64 end = FUNC1() + i2c->adap.timeout;

		while (!FUNC3(i2c) &&
		       FUNC6(FUNC1(), end))
			FUNC7(I2C_OCTEON_EVENT_WAIT / 2, I2C_OCTEON_EVENT_WAIT);

		return FUNC3(i2c) ? 0 : -ETIMEDOUT;
	}

	i2c->hlc_int_enable(i2c);
	time_left = FUNC8(i2c->queue,
				       FUNC3(i2c),
				       i2c->adap.timeout);
	i2c->hlc_int_disable(i2c);
	if (!time_left)
		FUNC2(i2c);

	if (i2c->broken_irq_check && !time_left &&
	    FUNC3(i2c)) {
		FUNC0(i2c->dev, "broken irq connection detected, switching to polling mode.\n");
		i2c->broken_irq_mode = true;
		return 0;
	}

	if (!time_left)
		return -ETIMEDOUT;
	return 0;
}