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
struct i2c_adapter {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int ETIMEDOUT ; 
 int /*<<< orphan*/  I2C_DATACMD ; 
 unsigned char I2C_DATACMD_DAT_MASK ; 
 int I2C_DATACMD_READ ; 
 int I2C_DATACMD_WRITE ; 
 int /*<<< orphan*/  I2C_STATUS_RFNE ; 
 int /*<<< orphan*/  I2C_STATUS_TFNF ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 unsigned char FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct i2c_adapter *adap, unsigned char *buf, int length)
{
	int i2c_reg = *buf;

	/* Read data */
	while (length--) {
		if (!FUNC1(I2C_STATUS_TFNF)) {
			FUNC0(&adap->dev, "Tx FIFO Not Full timeout\n");
			return -ETIMEDOUT;
		}

		/* send addr */
		FUNC3(i2c_reg | I2C_DATACMD_WRITE, I2C_DATACMD);

		/* get ready to next write */
		i2c_reg++;

		/* send read CMD */
		FUNC3(I2C_DATACMD_READ, I2C_DATACMD);

		/* wait until the Rx FIFO have available */
		if (!FUNC1(I2C_STATUS_RFNE)) {
			FUNC0(&adap->dev, "RXRDY timeout\n");
			return -ETIMEDOUT;
		}

		/* read the data to buf */
		*buf = (FUNC2(I2C_DATACMD) & I2C_DATACMD_DAT_MASK);
		buf++;
	}

	return 0;
}