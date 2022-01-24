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
struct i2c_adapter {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (struct i2c_adapter*) ; 
 int /*<<< orphan*/  FUNC2 (struct i2c_adapter*) ; 
 int /*<<< orphan*/  FUNC3 (struct i2c_adapter*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct i2c_adapter*) ; 
 int /*<<< orphan*/  FUNC5 (struct i2c_adapter*,int) ; 

__attribute__((used)) static void FUNC6(struct i2c_adapter *control)
{
	/* Disable clock gating */
	FUNC5(control, false);

	if (!FUNC1(control))
		FUNC0("I2C busy !");

	/* Disable I2C */
	FUNC3(control, false);

	/* Configure I2C to operate as master and in standard mode */
	FUNC2(control);

	/* Initialize the clock to 50 kHz default */
	FUNC4(control);

}