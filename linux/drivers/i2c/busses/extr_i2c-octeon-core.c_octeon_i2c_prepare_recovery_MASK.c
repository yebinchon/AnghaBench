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
struct octeon_i2c {int dummy; } ;
struct i2c_adapter {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  SW_TWSI_EOP_TWSI_RST ; 
 int /*<<< orphan*/  TWSI_CTL_ENAB ; 
 struct octeon_i2c* FUNC0 (struct i2c_adapter*) ; 
 int /*<<< orphan*/  FUNC1 (struct octeon_i2c*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct octeon_i2c*) ; 
 int /*<<< orphan*/  FUNC3 (struct octeon_i2c*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct octeon_i2c*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 

__attribute__((used)) static void FUNC6(struct i2c_adapter *adap)
{
	struct octeon_i2c *i2c = FUNC0(adap);

	FUNC2(i2c);
	FUNC3(i2c, SW_TWSI_EOP_TWSI_RST, 0);
	/* wait for software reset to settle */
	FUNC5(5);

	/*
	 * Bring control register to a good state regardless
	 * of HLC state.
	 */
	FUNC1(i2c, TWSI_CTL_ENAB);

	FUNC4(i2c, 0);
}