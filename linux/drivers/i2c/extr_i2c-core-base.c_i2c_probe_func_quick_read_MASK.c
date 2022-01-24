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
 int /*<<< orphan*/  I2C_SMBUS_QUICK ; 
 int /*<<< orphan*/  I2C_SMBUS_READ ; 
 scalar_t__ FUNC0 (struct i2c_adapter*,unsigned short,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

int FUNC1(struct i2c_adapter *adap, unsigned short addr)
{
	return FUNC0(adap, addr, 0, I2C_SMBUS_READ, 0,
			      I2C_SMBUS_QUICK, NULL) >= 0;
}