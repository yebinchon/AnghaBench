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
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  LOGIBM_CONTROL_PORT ; 
 int /*<<< orphan*/  LOGIBM_DATA_PORT ; 
 int /*<<< orphan*/  LOGIBM_ENABLE_IRQ ; 
 int /*<<< orphan*/  LOGIBM_READ_X_HIGH ; 
 int /*<<< orphan*/  LOGIBM_READ_X_LOW ; 
 int /*<<< orphan*/  LOGIBM_READ_Y_HIGH ; 
 int /*<<< orphan*/  LOGIBM_READ_Y_LOW ; 
 int /*<<< orphan*/  REL_X ; 
 int /*<<< orphan*/  REL_Y ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned char) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  logibm_dev ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static irqreturn_t FUNC5(int irq, void *dev_id)
{
	char dx, dy;
	unsigned char buttons;

	FUNC4(LOGIBM_READ_X_LOW, LOGIBM_CONTROL_PORT);
	dx = (FUNC0(LOGIBM_DATA_PORT) & 0xf);
	FUNC4(LOGIBM_READ_X_HIGH, LOGIBM_CONTROL_PORT);
	dx |= (FUNC0(LOGIBM_DATA_PORT) & 0xf) << 4;
	FUNC4(LOGIBM_READ_Y_LOW, LOGIBM_CONTROL_PORT);
	dy = (FUNC0(LOGIBM_DATA_PORT) & 0xf);
	FUNC4(LOGIBM_READ_Y_HIGH, LOGIBM_CONTROL_PORT);
	buttons = FUNC0(LOGIBM_DATA_PORT);
	dy |= (buttons & 0xf) << 4;
	buttons = ~buttons >> 5;

	FUNC2(logibm_dev, REL_X, dx);
	FUNC2(logibm_dev, REL_Y, dy);
	FUNC1(logibm_dev, BTN_RIGHT,  buttons & 1);
	FUNC1(logibm_dev, BTN_MIDDLE, buttons & 2);
	FUNC1(logibm_dev, BTN_LEFT,   buttons & 4);
	FUNC3(logibm_dev);

	FUNC4(LOGIBM_ENABLE_IRQ, LOGIBM_CONTROL_PORT);
	return IRQ_HANDLED;
}