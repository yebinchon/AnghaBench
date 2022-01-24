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
struct i2c_msg {int flags; int len; int /*<<< orphan*/ * buf; } ;
struct i2c_adapter {int dummy; } ;
struct em_i2c_device {scalar_t__ base; } ;

/* Variables and functions */
 int ENXIO ; 
 int I2C_BIT_ACKD0 ; 
 int I2C_BIT_ACKE0 ; 
 int I2C_BIT_STT0 ; 
 int I2C_BIT_WREL0 ; 
 int I2C_BIT_WTIM0 ; 
 int I2C_M_RD ; 
 scalar_t__ I2C_OFS_IIC0 ; 
 int /*<<< orphan*/  I2C_OFS_IICC0 ; 
 int /*<<< orphan*/  FUNC0 (struct em_i2c_device*,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct i2c_adapter*) ; 
 int /*<<< orphan*/  FUNC2 (struct em_i2c_device*) ; 
 int FUNC3 (struct em_i2c_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct i2c_msg*) ; 
 struct em_i2c_device* FUNC5 (struct i2c_adapter*) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static int FUNC8(struct i2c_adapter *adap, struct i2c_msg *msg,
				int stop)
{
	struct em_i2c_device *priv = FUNC5(adap);
	int count, status, read = !!(msg->flags & I2C_M_RD);

	/* Send start condition */
	FUNC0(priv, 0, I2C_BIT_ACKE0 | I2C_BIT_WTIM0, I2C_OFS_IICC0);
	FUNC0(priv, 0, I2C_BIT_STT0, I2C_OFS_IICC0);

	/* Send slave address and R/W type */
	FUNC7(FUNC4(msg), priv->base + I2C_OFS_IIC0);

	/* Wait for transaction */
	status = FUNC3(priv);
	if (status < 0)
		goto out_reset;

	/* Received NACK (result of setting slave address and R/W) */
	if (!(status & I2C_BIT_ACKD0)) {
		FUNC2(priv);
		goto out;
	}

	/* Extra setup for read transactions */
	if (read) {
		/* 8 bit interrupt mode */
		FUNC0(priv, I2C_BIT_WTIM0, I2C_BIT_ACKE0, I2C_OFS_IICC0);
		FUNC0(priv, I2C_BIT_WTIM0, I2C_BIT_WREL0, I2C_OFS_IICC0);

		/* Wait for transaction */
		status = FUNC3(priv);
		if (status < 0)
			goto out_reset;
	}

	/* Send / receive data */
	for (count = 0; count < msg->len; count++) {
		if (read) { /* Read transaction */
			msg->buf[count] = FUNC6(priv->base + I2C_OFS_IIC0);
			FUNC0(priv, 0, I2C_BIT_WREL0, I2C_OFS_IICC0);

		} else { /* Write transaction */
			/* Received NACK */
			if (!(status & I2C_BIT_ACKD0)) {
				FUNC2(priv);
				goto out;
			}

			/* Write data */
			FUNC7(msg->buf[count], priv->base + I2C_OFS_IIC0);
		}

		/* Wait for R/W transaction */
		status = FUNC3(priv);
		if (status < 0)
			goto out_reset;
	}

	if (stop)
		FUNC2(priv);

	return count;

out_reset:
	FUNC1(adap);
out:
	return status < 0 ? status : -ENXIO;
}