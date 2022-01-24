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
struct i2c_mux_core {int dummy; } ;
struct i2c_arbitrator_data {int /*<<< orphan*/  slew_delay_us; int /*<<< orphan*/  our_gpio; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct i2c_arbitrator_data* FUNC1 (struct i2c_mux_core*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct i2c_mux_core *muxc, u32 chan)
{
	const struct i2c_arbitrator_data *arb = FUNC1(muxc);

	/* Release the bus and wait for the other master to notice */
	FUNC0(arb->our_gpio, 0);
	FUNC2(arb->slew_delay_us);

	return 0;
}