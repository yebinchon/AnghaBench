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
struct octeon_i2c {int /*<<< orphan*/  queue; int /*<<< orphan*/  (* int_disable ) (struct octeon_i2c*) ;} ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  FUNC0 (struct octeon_i2c*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

irqreturn_t FUNC2(int irq, void *dev_id)
{
	struct octeon_i2c *i2c = dev_id;

	i2c->int_disable(i2c);
	FUNC1(&i2c->queue);

	return IRQ_HANDLED;
}