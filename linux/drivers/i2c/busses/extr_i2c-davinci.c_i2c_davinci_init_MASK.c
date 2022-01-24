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
struct davinci_i2c_platform_data {int /*<<< orphan*/  bus_delay; int /*<<< orphan*/  bus_freq; } ;
struct davinci_i2c_dev {int /*<<< orphan*/  dev; struct davinci_i2c_platform_data* pdata; } ;

/* Variables and functions */
 int /*<<< orphan*/  DAVINCI_I2C_CLKH_REG ; 
 int /*<<< orphan*/  DAVINCI_I2C_CLKL_REG ; 
 int /*<<< orphan*/  DAVINCI_I2C_IMR_REG ; 
 int /*<<< orphan*/  DAVINCI_I2C_OAR_REG ; 
 int /*<<< orphan*/  DAVINCI_I2C_OWN_ADDRESS ; 
 int /*<<< orphan*/  DAVINCI_I2C_PSC_REG ; 
 int /*<<< orphan*/  I2C_DAVINCI_INTR_ALL ; 
 int /*<<< orphan*/  FUNC0 (struct davinci_i2c_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct davinci_i2c_dev*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct davinci_i2c_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  FUNC4 (struct davinci_i2c_dev*) ; 

__attribute__((used)) static int FUNC5(struct davinci_i2c_dev *dev)
{
	struct davinci_i2c_platform_data *pdata = dev->pdata;

	/* put I2C into reset */
	FUNC1(dev, 0);

	/* compute clock dividers */
	FUNC4(dev);

	/* Respond at reserved "SMBus Host" slave address" (and zero);
	 * we seem to have no option to not respond...
	 */
	FUNC2(dev, DAVINCI_I2C_OAR_REG, DAVINCI_I2C_OWN_ADDRESS);

	FUNC3(dev->dev, "PSC  = %d\n",
		FUNC0(dev, DAVINCI_I2C_PSC_REG));
	FUNC3(dev->dev, "CLKL = %d\n",
		FUNC0(dev, DAVINCI_I2C_CLKL_REG));
	FUNC3(dev->dev, "CLKH = %d\n",
		FUNC0(dev, DAVINCI_I2C_CLKH_REG));
	FUNC3(dev->dev, "bus_freq = %dkHz, bus_delay = %d\n",
		pdata->bus_freq, pdata->bus_delay);


	/* Take the I2C module out of reset: */
	FUNC1(dev, 1);

	/* Enable interrupts */
	FUNC2(dev, DAVINCI_I2C_IMR_REG, I2C_DAVINCI_INTR_ALL);

	return 0;
}