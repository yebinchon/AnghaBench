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
typedef  int u32 ;
struct qib_devdata {unsigned long gpio_scl_num; unsigned long gpio_sda_num; int (* f_gpio_mod ) (struct qib_devdata*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ;} ;

/* Variables and functions */
 int TWSI_BUF_WAIT_USEC ; 
 int /*<<< orphan*/  FUNC0 (struct qib_devdata*,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct qib_devdata*,int) ; 
 int FUNC2 (struct qib_devdata*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct qib_devdata*,int) ; 
 int FUNC4 (struct qib_devdata*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int FUNC5 (struct qib_devdata*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 

int FUNC7(struct qib_devdata *dd)
{
	int clock_cycles_left = 9;
	int was_high = 0;
	u32 pins, mask;

	/* Both SCL and SDA should be high. If not, there
	 * is something wrong.
	 */
	mask = (1UL << dd->gpio_scl_num) | (1UL << dd->gpio_sda_num);

	/*
	 * Force pins to desired innocuous state.
	 * This is the default power-on state with out=0 and dir=0,
	 * So tri-stated and should be floating high (barring HW problems)
	 */
	dd->f_gpio_mod(dd, 0, 0, mask);

	/*
	 * Clock nine times to get all listeners into a sane state.
	 * If SDA does not go high at any point, we are wedged.
	 * One vendor recommends then issuing START followed by STOP.
	 * we cannot use our "normal" functions to do that, because
	 * if SCL drops between them, another vendor's part will
	 * wedge, dropping SDA and keeping it low forever, at the end of
	 * the next transaction (even if it was not the device addressed).
	 * So our START and STOP take place with SCL held high.
	 */
	while (clock_cycles_left--) {
		FUNC1(dd, 0);
		FUNC1(dd, 1);
		/* Note if SDA is high, but keep clocking to sync slave */
		was_high |= FUNC2(dd, 0);
	}

	if (was_high) {
		/*
		 * We saw a high, which we hope means the slave is sync'd.
		 * Issue START, STOP, pause for T_BUF.
		 */

		pins = dd->f_gpio_mod(dd, 0, 0, 0);
		if ((pins & mask) != mask)
			FUNC0(dd, "GPIO pins not at rest: %d\n",
				    pins & mask);
		/* Drop SDA to issue START */
		FUNC6(1); /* Guarantee .6 uSec setup */
		FUNC3(dd, 0);
		FUNC6(1); /* Guarantee .6 uSec hold */
		/* At this point, SCL is high, SDA low. Raise SDA for STOP */
		FUNC3(dd, 1);
		FUNC6(TWSI_BUF_WAIT_USEC);
	}

	return !was_high;
}