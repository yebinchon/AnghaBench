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
typedef  int /*<<< orphan*/  u32 ;
struct i2c_mux_core {int /*<<< orphan*/  dev; } ;
struct i2c_arbitrator_data {int wait_free_us; int wait_retry_us; int /*<<< orphan*/  slew_delay_us; int /*<<< orphan*/  our_gpio; int /*<<< orphan*/  their_gpio; } ;

/* Variables and functions */
 int EBUSY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 
 struct i2c_arbitrator_data* FUNC3 (struct i2c_mux_core*) ; 
 int jiffies ; 
 scalar_t__ FUNC4 (int,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (int,int) ; 

__attribute__((used)) static int FUNC8(struct i2c_mux_core *muxc, u32 chan)
{
	const struct i2c_arbitrator_data *arb = FUNC3(muxc);
	unsigned long stop_retry, stop_time;

	/* Start a round of trying to claim the bus */
	stop_time = jiffies + FUNC6(arb->wait_free_us) + 1;
	do {
		/* Indicate that we want to claim the bus */
		FUNC2(arb->our_gpio, 1);
		FUNC5(arb->slew_delay_us);

		/* Wait for the other master to release it */
		stop_retry = jiffies + FUNC6(arb->wait_retry_us) + 1;
		while (FUNC4(jiffies, stop_retry)) {
			int gpio_val = FUNC1(arb->their_gpio);

			if (!gpio_val) {
				/* We got it, so return */
				return 0;
			}

			FUNC7(50, 200);
		}

		/* It didn't release, so give up, wait, and try again */
		FUNC2(arb->our_gpio, 0);

		FUNC7(arb->wait_retry_us, arb->wait_retry_us * 2);
	} while (FUNC4(jiffies, stop_time));

	/* Give up, release our claim */
	FUNC2(arb->our_gpio, 0);
	FUNC5(arb->slew_delay_us);
	FUNC0(muxc->dev, "Could not claim bus, timeout\n");
	return -EBUSY;
}