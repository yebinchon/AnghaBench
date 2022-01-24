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
typedef  unsigned int u16 ;
struct input_dev {int dummy; } ;
struct TYPE_3__ {unsigned int x; unsigned int y; unsigned int z1; unsigned int z2; scalar_t__ ignore; scalar_t__ y_buf; scalar_t__ x_buf; } ;
struct ads7846_packet {TYPE_1__ tc; } ;
struct ads7846 {int model; int pressure_max; unsigned int x_plate_ohms; int pendown; TYPE_2__* spi; int /*<<< orphan*/  core_prop; struct input_dev* input; scalar_t__ penirq_recheck_delay_usecs; struct ads7846_packet* packet; } ;
struct TYPE_4__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  ABS_PRESSURE ; 
 int /*<<< orphan*/  BTN_TOUCH ; 
 unsigned int MAX_12BIT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,...) ; 
 scalar_t__ FUNC1 (struct ads7846*) ; 
 int /*<<< orphan*/  FUNC2 (struct input_dev*,int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (struct input_dev*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (struct input_dev*) ; 
 scalar_t__ FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (struct input_dev*,int /*<<< orphan*/ *,unsigned int,unsigned int,int) ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__) ; 

__attribute__((used)) static void FUNC8(struct ads7846 *ts)
{
	struct ads7846_packet *packet = ts->packet;
	unsigned int Rt;
	u16 x, y, z1, z2;

	/*
	 * ads7846_get_value() does in-place conversion (including byte swap)
	 * from on-the-wire format as part of debouncing to get stable
	 * readings.
	 */
	if (ts->model == 7845) {
		x = *(u16 *)packet->tc.x_buf;
		y = *(u16 *)packet->tc.y_buf;
		z1 = 0;
		z2 = 0;
	} else {
		x = packet->tc.x;
		y = packet->tc.y;
		z1 = packet->tc.z1;
		z2 = packet->tc.z2;
	}

	/* range filtering */
	if (x == MAX_12BIT)
		x = 0;

	if (ts->model == 7843) {
		Rt = ts->pressure_max / 2;
	} else if (ts->model == 7845) {
		if (FUNC1(ts))
			Rt = ts->pressure_max / 2;
		else
			Rt = 0;
		FUNC0(&ts->spi->dev, "x/y: %d/%d, PD %d\n", x, y, Rt);
	} else if (FUNC5(x && z1)) {
		/* compute touch pressure resistance using equation #2 */
		Rt = z2;
		Rt -= z1;
		Rt *= x;
		Rt *= ts->x_plate_ohms;
		Rt /= z1;
		Rt = (Rt + 2047) >> 12;
	} else {
		Rt = 0;
	}

	/*
	 * Sample found inconsistent by debouncing or pressure is beyond
	 * the maximum. Don't report it to user space, repeat at least
	 * once more the measurement
	 */
	if (packet->tc.ignore || Rt > ts->pressure_max) {
		FUNC0(&ts->spi->dev, "ignored %d pressure %d\n",
			 packet->tc.ignore, Rt);
		return;
	}

	/*
	 * Maybe check the pendown state before reporting. This discards
	 * false readings when the pen is lifted.
	 */
	if (ts->penirq_recheck_delay_usecs) {
		FUNC7(ts->penirq_recheck_delay_usecs);
		if (!FUNC1(ts))
			Rt = 0;
	}

	/*
	 * NOTE: We can't rely on the pressure to determine the pen down
	 * state, even this controller has a pressure sensor. The pressure
	 * value can fluctuate for quite a while after lifting the pen and
	 * in some cases may not even settle at the expected value.
	 *
	 * The only safe way to check for the pen up condition is in the
	 * timer by reading the pen signal state (it's a GPIO _and_ IRQ).
	 */
	if (Rt) {
		struct input_dev *input = ts->input;

		if (!ts->pendown) {
			FUNC3(input, BTN_TOUCH, 1);
			ts->pendown = true;
			FUNC0(&ts->spi->dev, "DOWN\n");
		}

		FUNC6(input, &ts->core_prop, x, y, false);
		FUNC2(input, ABS_PRESSURE, ts->pressure_max - Rt);

		FUNC4(input);
		FUNC0(&ts->spi->dev, "%4d/%4d/%4d\n", x, y, Rt);
	}
}