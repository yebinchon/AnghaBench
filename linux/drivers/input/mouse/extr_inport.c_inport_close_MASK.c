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
 int /*<<< orphan*/  INPORT_CONTROL_PORT ; 
 int /*<<< orphan*/  INPORT_DATA_PORT ; 
 int /*<<< orphan*/  INPORT_MODE_BASE ; 
 int /*<<< orphan*/  INPORT_REG_MODE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  inport_irq ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(struct input_dev *dev)
{
	FUNC1(INPORT_REG_MODE, INPORT_CONTROL_PORT);
	FUNC1(INPORT_MODE_BASE, INPORT_DATA_PORT);
	FUNC0(inport_irq, NULL);
}