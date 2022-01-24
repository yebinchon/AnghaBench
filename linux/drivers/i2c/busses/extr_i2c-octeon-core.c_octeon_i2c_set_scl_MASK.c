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
 int /*<<< orphan*/  TWSI_INT_SCL_OVR ; 
 struct octeon_i2c* FUNC0 (struct i2c_adapter*) ; 
 int /*<<< orphan*/  FUNC1 (struct octeon_i2c*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(struct i2c_adapter *adap, int val)
{
	struct octeon_i2c *i2c = FUNC0(adap);

	FUNC1(i2c, val ? 0 : TWSI_INT_SCL_OVR);
}