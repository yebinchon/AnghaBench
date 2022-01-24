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
struct sprd_i2c {int count; int /*<<< orphan*/  complete; int /*<<< orphan*/  buf; int /*<<< orphan*/  err; scalar_t__ base; struct i2c_msg* msg; } ;
struct i2c_msg {int flags; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 int /*<<< orphan*/  EIO ; 
 int I2C_FIFO_FULL_THLD ; 
 int I2C_M_RD ; 
 int I2C_RX_ACK ; 
 scalar_t__ I2C_STATUS ; 
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (struct sprd_i2c*) ; 
 int /*<<< orphan*/  FUNC3 (struct sprd_i2c*) ; 
 int /*<<< orphan*/  FUNC4 (struct sprd_i2c*) ; 
 int /*<<< orphan*/  FUNC5 (struct sprd_i2c*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static irqreturn_t FUNC6(int irq, void *dev_id)
{
	struct sprd_i2c *i2c_dev = dev_id;
	struct i2c_msg *msg = i2c_dev->msg;
	bool ack = !(FUNC1(i2c_dev->base + I2C_STATUS) & I2C_RX_ACK);
	u32 i2c_tran;

	if (msg->flags & I2C_M_RD)
		i2c_tran = i2c_dev->count >= I2C_FIFO_FULL_THLD;
	else
		i2c_tran = i2c_dev->count;

	/*
	 * If we got one ACK from slave when writing data, and we did not
	 * finish this transmission (i2c_tran is not zero), then we should
	 * continue to write data.
	 *
	 * For reading data, ack is always true, if i2c_tran is not 0 which
	 * means we still need to contine to read data from slave.
	 */
	if (i2c_tran && ack) {
		FUNC4(i2c_dev);
		return IRQ_HANDLED;
	}

	i2c_dev->err = 0;

	/*
	 * If we did not get one ACK from slave when writing data, we should
	 * return -EIO to notify users.
	 */
	if (!ack)
		i2c_dev->err = -EIO;
	else if (msg->flags & I2C_M_RD && i2c_dev->count)
		FUNC5(i2c_dev, i2c_dev->buf, i2c_dev->count);

	/* Transmission is done and clear ack and start operation */
	FUNC2(i2c_dev);
	FUNC3(i2c_dev);
	FUNC0(&i2c_dev->complete);

	return IRQ_HANDLED;
}