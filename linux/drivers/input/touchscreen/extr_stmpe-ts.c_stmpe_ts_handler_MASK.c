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
typedef  int u8 ;
struct stmpe_touch {int /*<<< orphan*/  work; int /*<<< orphan*/  stmpe; int /*<<< orphan*/  idev; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 int /*<<< orphan*/  ABS_PRESSURE ; 
 int /*<<< orphan*/  ABS_X ; 
 int /*<<< orphan*/  ABS_Y ; 
 int /*<<< orphan*/  BTN_TOUCH ; 
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  STMPE_REG_TSC_CTRL ; 
 int /*<<< orphan*/  STMPE_REG_TSC_DATA_XYZ ; 
 int /*<<< orphan*/  STMPE_TSC_CTRL_TSC_EN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static irqreturn_t FUNC9(int irq, void *data)
{
	u8 data_set[4];
	int x, y, z;
	struct stmpe_touch *ts = data;

	/*
	 * Cancel scheduled polling for release if we have new value
	 * available. Wait if the polling is already running.
	 */
	FUNC1(&ts->work);

	/*
	 * The FIFO sometimes just crashes and stops generating interrupts. This
	 * appears to be a silicon bug. We still have to clearify this with
	 * the manufacture. As a workaround we disable the TSC while we are
	 * collecting data and flush the FIFO after reading
	 */
	FUNC8(ts->stmpe, STMPE_REG_TSC_CTRL,
				STMPE_TSC_CTRL_TSC_EN, 0);

	FUNC7(ts->stmpe, STMPE_REG_TSC_DATA_XYZ, 4, data_set);

	x = (data_set[0] << 4) | (data_set[1] >> 4);
	y = ((data_set[1] & 0xf) << 8) | data_set[2];
	z = data_set[3];

	FUNC2(ts->idev, ABS_X, x);
	FUNC2(ts->idev, ABS_Y, y);
	FUNC2(ts->idev, ABS_PRESSURE, z);
	FUNC3(ts->idev, BTN_TOUCH, 1);
	FUNC4(ts->idev);

       /* flush the FIFO after we have read out our values. */
	FUNC0(ts->stmpe);

	/* reenable the tsc */
	FUNC8(ts->stmpe, STMPE_REG_TSC_CTRL,
			STMPE_TSC_CTRL_TSC_EN, STMPE_TSC_CTRL_TSC_EN);

	/* start polling for touch_det to detect release */
	FUNC6(&ts->work, FUNC5(50));

	return IRQ_HANDLED;
}