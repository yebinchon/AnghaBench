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
struct tsc200x_data {unsigned int x; unsigned int y; unsigned int z1; unsigned int z2; } ;
struct tsc200x {unsigned int in_x; scalar_t__ in_y; unsigned int in_z1; unsigned int in_z2; unsigned int x_plate_ohm; scalar_t__ last_valid_interrupt; int /*<<< orphan*/  lock; int /*<<< orphan*/  penup_timer; int /*<<< orphan*/  pen_down; int /*<<< orphan*/  regmap; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 int /*<<< orphan*/  IRQ_HANDLED ; 
 unsigned int MAX_12BIT ; 
 int /*<<< orphan*/  TSC200X_DATA_REGS ; 
 int /*<<< orphan*/  TSC200X_PENUP_TIME_MS ; 
 int /*<<< orphan*/  TSC200X_REG_X ; 
 scalar_t__ jiffies ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,scalar_t__) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct tsc200x_data*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (struct tsc200x*,unsigned int,scalar_t__,unsigned int) ; 
 scalar_t__ FUNC6 (int) ; 

__attribute__((used)) static irqreturn_t FUNC7(int irq, void *_ts)
{
	struct tsc200x *ts = _ts;
	unsigned long flags;
	unsigned int pressure;
	struct tsc200x_data tsdata;
	int error;

	/* read the coordinates */
	error = FUNC2(ts->regmap, TSC200X_REG_X, &tsdata,
				 TSC200X_DATA_REGS);
	if (FUNC6(error))
		goto out;

	/* validate position */
	if (FUNC6(tsdata.x > MAX_12BIT || tsdata.y > MAX_12BIT))
		goto out;

	/* Skip reading if the pressure components are out of range */
	if (FUNC6(tsdata.z1 == 0 || tsdata.z2 > MAX_12BIT))
		goto out;
	if (FUNC6(tsdata.z1 >= tsdata.z2))
		goto out;

       /*
	* Skip point if this is a pen down with the exact same values as
	* the value before pen-up - that implies SPI fed us stale data
	*/
	if (!ts->pen_down &&
	    ts->in_x == tsdata.x && ts->in_y == tsdata.y &&
	    ts->in_z1 == tsdata.z1 && ts->in_z2 == tsdata.z2) {
		goto out;
	}

	/*
	 * At this point we are happy we have a valid and useful reading.
	 * Remember it for later comparisons. We may now begin downsampling.
	 */
	ts->in_x = tsdata.x;
	ts->in_y = tsdata.y;
	ts->in_z1 = tsdata.z1;
	ts->in_z2 = tsdata.z2;

	/* Compute touch pressure resistance using equation #1 */
	pressure = tsdata.x * (tsdata.z2 - tsdata.z1) / tsdata.z1;
	pressure = pressure * ts->x_plate_ohm / 4096;
	if (FUNC6(pressure > MAX_12BIT))
		goto out;

	FUNC3(&ts->lock, flags);

	FUNC5(ts, tsdata.x, tsdata.y, pressure);
	FUNC0(&ts->penup_timer,
		  jiffies + FUNC1(TSC200X_PENUP_TIME_MS));

	FUNC4(&ts->lock, flags);

	ts->last_valid_interrupt = jiffies;
out:
	return IRQ_HANDLED;
}