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
union i2c_smbus_data {int /*<<< orphan*/  byte; } ;
typedef  int /*<<< orphan*/  u8 ;
typedef  int /*<<< orphan*/  u16 ;
struct i2c_adapter {int dummy; } ;
struct cht_wc_i2c_adap {int io_error; int done; int /*<<< orphan*/  adap_lock; int /*<<< orphan*/  read_data; int /*<<< orphan*/  wait; int /*<<< orphan*/  regmap; } ;

/* Variables and functions */
 int /*<<< orphan*/  CHT_WC_I2C_CLIENT_ADDR ; 
 int /*<<< orphan*/  CHT_WC_I2C_CTRL ; 
 int /*<<< orphan*/  CHT_WC_I2C_CTRL_RD ; 
 int /*<<< orphan*/  CHT_WC_I2C_CTRL_WR ; 
 int /*<<< orphan*/  CHT_WC_I2C_REG_OFFSET ; 
 int /*<<< orphan*/  CHT_WC_I2C_WRDATA ; 
 int EIO ; 
 int ETIMEDOUT ; 
 char I2C_SMBUS_READ ; 
 char I2C_SMBUS_WRITE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct cht_wc_i2c_adap*) ; 
 struct cht_wc_i2c_adap* FUNC1 (struct i2c_adapter*) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC7(struct i2c_adapter *_adap, u16 addr,
				      unsigned short flags, char read_write,
				      u8 command, int size,
				      union i2c_smbus_data *data)
{
	struct cht_wc_i2c_adap *adap = FUNC1(_adap);
	int ret;

	FUNC3(&adap->adap_lock);
	adap->io_error = false;
	adap->done = false;
	FUNC4(&adap->adap_lock);

	ret = FUNC5(adap->regmap, CHT_WC_I2C_CLIENT_ADDR, addr);
	if (ret)
		return ret;

	if (read_write == I2C_SMBUS_WRITE) {
		ret = FUNC5(adap->regmap, CHT_WC_I2C_WRDATA, data->byte);
		if (ret)
			return ret;
	}

	ret = FUNC5(adap->regmap, CHT_WC_I2C_REG_OFFSET, command);
	if (ret)
		return ret;

	ret = FUNC5(adap->regmap, CHT_WC_I2C_CTRL,
			   (read_write == I2C_SMBUS_WRITE) ?
			   CHT_WC_I2C_CTRL_WR : CHT_WC_I2C_CTRL_RD);
	if (ret)
		return ret;

	ret = FUNC6(adap->wait, adap->done, FUNC2(30));
	if (ret == 0) {
		/*
		 * The CHT GPIO controller serializes all IRQs, sometimes
		 * causing significant delays, check status manually.
		 */
		FUNC0(0, adap);
		if (!adap->done)
			return -ETIMEDOUT;
	}

	ret = 0;
	FUNC3(&adap->adap_lock);
	if (adap->io_error)
		ret = -EIO;
	else if (read_write == I2C_SMBUS_READ)
		data->byte = adap->read_data;
	FUNC4(&adap->adap_lock);

	return ret;
}