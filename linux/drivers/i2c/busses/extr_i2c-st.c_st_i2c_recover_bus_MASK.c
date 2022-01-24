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
typedef  int u32 ;
struct st_i2c_dev {scalar_t__ base; int /*<<< orphan*/  dev; } ;
struct i2c_adapter {int dummy; } ;

/* Variables and functions */
 scalar_t__ SSC_CTL ; 
 int SSC_CTL_EN ; 
 int SSC_CTL_EN_RX_FIFO ; 
 int SSC_CTL_EN_TX_FIFO ; 
 int SSC_CTL_MS ; 
 scalar_t__ SSC_I2C ; 
 int SSC_I2C_I2CM ; 
 scalar_t__ SSC_IEN ; 
 scalar_t__ SSC_TBUF ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 struct st_i2c_dev* FUNC1 (struct i2c_adapter*) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC3 (struct st_i2c_dev*) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC5 (int,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static int FUNC7(struct i2c_adapter *i2c_adap)
{
	struct st_i2c_dev *i2c_dev = FUNC1(i2c_adap);
	u32 ctl;

	FUNC0(i2c_dev->dev, "Trying to recover bus\n");

	/*
	 * SSP IP is dual role SPI/I2C to generate 9 clock pulses
	 * we switch to SPI node, 9 bit words and write a 0. This
	 * has been validate with a oscilloscope and is easier
	 * than switching to GPIO mode.
	 */

	/* Disable interrupts */
	FUNC6(0, i2c_dev->base + SSC_IEN);

	FUNC3(i2c_dev);

	ctl = SSC_CTL_EN | SSC_CTL_MS |	SSC_CTL_EN_RX_FIFO | SSC_CTL_EN_TX_FIFO;
	FUNC4(i2c_dev->base + SSC_CTL, ctl);

	FUNC2(i2c_dev->base + SSC_I2C, SSC_I2C_I2CM);
	FUNC5(8000, 10000);

	FUNC6(0, i2c_dev->base + SSC_TBUF);
	FUNC5(2000, 4000);
	FUNC4(i2c_dev->base + SSC_I2C, SSC_I2C_I2CM);

	return 0;
}