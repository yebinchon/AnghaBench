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
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 int /*<<< orphan*/  BTN_LEFT ; 
 int /*<<< orphan*/  BTN_MIDDLE ; 
 int /*<<< orphan*/  BTN_RIGHT ; 
 int /*<<< orphan*/  INPORT_CONTROL_PORT ; 
 int /*<<< orphan*/  INPORT_DATA_PORT ; 
 int INPORT_MODE_BASE ; 
 int INPORT_MODE_HOLD ; 
 int INPORT_MODE_IRQ ; 
 int INPORT_REG_BTNS ; 
 int INPORT_REG_MODE ; 
 int INPORT_REG_X ; 
 int INPORT_REG_Y ; 
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  REL_X ; 
 int /*<<< orphan*/  REL_Y ; 
 unsigned char FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  inport_dev ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned char) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned char) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static irqreturn_t FUNC5(int irq, void *dev_id)
{
	unsigned char buttons;

	FUNC4(INPORT_REG_MODE, INPORT_CONTROL_PORT);
	FUNC4(INPORT_MODE_HOLD | INPORT_MODE_IRQ | INPORT_MODE_BASE, INPORT_DATA_PORT);

	FUNC4(INPORT_REG_X, INPORT_CONTROL_PORT);
	FUNC2(inport_dev, REL_X, FUNC0(INPORT_DATA_PORT));

	FUNC4(INPORT_REG_Y, INPORT_CONTROL_PORT);
	FUNC2(inport_dev, REL_Y, FUNC0(INPORT_DATA_PORT));

	FUNC4(INPORT_REG_BTNS, INPORT_CONTROL_PORT);
	buttons = FUNC0(INPORT_DATA_PORT);

	FUNC1(inport_dev, BTN_MIDDLE, buttons & 1);
	FUNC1(inport_dev, BTN_LEFT,   buttons & 2);
	FUNC1(inport_dev, BTN_RIGHT,  buttons & 4);

	FUNC4(INPORT_REG_MODE, INPORT_CONTROL_PORT);
	FUNC4(INPORT_MODE_IRQ | INPORT_MODE_BASE, INPORT_DATA_PORT);

	FUNC3(inport_dev);
	return IRQ_HANDLED;
}