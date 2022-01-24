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
struct davinci_i2c_dev {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  DAVINCI_I2C_IMR_REG ; 
 int /*<<< orphan*/  FUNC0 (struct davinci_i2c_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct davinci_i2c_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct davinci_i2c_dev* FUNC2 (struct i2c_adapter*) ; 

__attribute__((used)) static void FUNC3(struct i2c_adapter *adap)
{
	struct davinci_i2c_dev *dev = FUNC2(adap);

	/* Disable interrupts */
	FUNC1(dev, DAVINCI_I2C_IMR_REG, 0);

	/* put I2C into reset */
	FUNC0(dev, 0);
}