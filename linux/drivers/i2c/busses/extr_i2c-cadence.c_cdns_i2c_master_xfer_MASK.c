#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct i2c_msg {int flags; } ;
struct TYPE_2__ {int /*<<< orphan*/  parent; } ;
struct i2c_adapter {TYPE_1__ dev; struct cdns_i2c* algo_data; } ;
struct cdns_i2c {int quirks; int bus_hold_flag; int err_status; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int CDNS_I2C_BROKEN_HOLD_BIT ; 
 int CDNS_I2C_CR_HOLD ; 
 int /*<<< orphan*/  CDNS_I2C_CR_OFFSET ; 
 int CDNS_I2C_IXR_NACK ; 
 int CDNS_I2C_SR_BA ; 
 int /*<<< orphan*/  CDNS_I2C_SR_OFFSET ; 
 int EAGAIN ; 
 int EIO ; 
 int ENXIO ; 
 int EOPNOTSUPP ; 
 int I2C_M_RD ; 
 int /*<<< orphan*/  FUNC0 (struct i2c_adapter*) ; 
 int FUNC1 (struct cdns_i2c*,struct i2c_msg*,struct i2c_adapter*) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC8(struct i2c_adapter *adap, struct i2c_msg *msgs,
				int num)
{
	int ret, count;
	u32 reg;
	struct cdns_i2c *id = adap->algo_data;
	bool hold_quirk;

	ret = FUNC5(id->dev);
	if (ret < 0)
		return ret;
	/* Check if the bus is free */
	if (FUNC2(CDNS_I2C_SR_OFFSET) & CDNS_I2C_SR_BA) {
		ret = -EAGAIN;
		goto out;
	}

	hold_quirk = !!(id->quirks & CDNS_I2C_BROKEN_HOLD_BIT);
	/*
	 * Set the flag to one when multiple messages are to be
	 * processed with a repeated start.
	 */
	if (num > 1) {
		/*
		 * This controller does not give completion interrupt after a
		 * master receive message if HOLD bit is set (repeated start),
		 * resulting in SW timeout. Hence, if a receive message is
		 * followed by any other message, an error is returned
		 * indicating that this sequence is not supported.
		 */
		for (count = 0; (count < num - 1 && hold_quirk); count++) {
			if (msgs[count].flags & I2C_M_RD) {
				FUNC4(adap->dev.parent,
					 "Can't do repeated start after a receive message\n");
				ret = -EOPNOTSUPP;
				goto out;
			}
		}
		id->bus_hold_flag = 1;
		reg = FUNC2(CDNS_I2C_CR_OFFSET);
		reg |= CDNS_I2C_CR_HOLD;
		FUNC3(reg, CDNS_I2C_CR_OFFSET);
	} else {
		id->bus_hold_flag = 0;
	}

	/* Process the msg one by one */
	for (count = 0; count < num; count++, msgs++) {
		if (count == (num - 1))
			id->bus_hold_flag = 0;

		ret = FUNC1(id, msgs, adap);
		if (ret)
			goto out;

		/* Report the other error interrupts to application */
		if (id->err_status) {
			FUNC0(adap);

			if (id->err_status & CDNS_I2C_IXR_NACK) {
				ret = -ENXIO;
				goto out;
			}
			ret = -EIO;
			goto out;
		}
	}

	ret = num;
out:
	FUNC6(id->dev);
	FUNC7(id->dev);
	return ret;
}