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
 int /*<<< orphan*/  DAVINCI_I2C_DCLR_PDCLR0 ; 
 int /*<<< orphan*/  DAVINCI_I2C_DCLR_REG ; 
 int /*<<< orphan*/  DAVINCI_I2C_DSET_PDSET0 ; 
 int /*<<< orphan*/  DAVINCI_I2C_DSET_REG ; 
 int /*<<< orphan*/  FUNC0 (struct davinci_i2c_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct davinci_i2c_dev* FUNC1 (struct i2c_adapter*) ; 

__attribute__((used)) static void FUNC2(struct i2c_adapter *adap, int val)
{
	struct davinci_i2c_dev *dev = FUNC1(adap);

	if (val)
		FUNC0(dev, DAVINCI_I2C_DSET_REG,
				      DAVINCI_I2C_DSET_PDSET0);
	else
		FUNC0(dev, DAVINCI_I2C_DCLR_REG,
				      DAVINCI_I2C_DCLR_PDCLR0);
}