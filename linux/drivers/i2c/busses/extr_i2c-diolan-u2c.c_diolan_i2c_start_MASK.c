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
struct i2c_diolan_u2c {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  CMD_I2C_START ; 
 int FUNC0 (struct i2c_diolan_u2c*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC1(struct i2c_diolan_u2c *dev)
{
	return FUNC0(dev, CMD_I2C_START, false);
}