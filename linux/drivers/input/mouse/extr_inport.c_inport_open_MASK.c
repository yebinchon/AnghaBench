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
struct input_dev {int dummy; } ;

/* Variables and functions */
 int EBUSY ; 
 int /*<<< orphan*/  INPORT_CONTROL_PORT ; 
 int /*<<< orphan*/  INPORT_DATA_PORT ; 
 int INPORT_MODE_BASE ; 
 int INPORT_MODE_IRQ ; 
 int INPORT_REG_MODE ; 
 int /*<<< orphan*/  inport_interrupt ; 
 int /*<<< orphan*/  inport_irq ; 
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC2(struct input_dev *dev)
{
	if (FUNC1(inport_irq, inport_interrupt, 0, "inport", NULL))
		return -EBUSY;
	FUNC0(INPORT_REG_MODE, INPORT_CONTROL_PORT);
	FUNC0(INPORT_MODE_IRQ | INPORT_MODE_BASE, INPORT_DATA_PORT);

	return 0;
}