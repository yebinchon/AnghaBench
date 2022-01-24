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
struct sprd_i2c {int count; scalar_t__ base; struct i2c_msg* msg; } ;
struct i2c_msg {int flags; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 int I2C_FIFO_FULL_THLD ; 
 int I2C_M_RD ; 
 int I2C_RX_ACK ; 
 scalar_t__ I2C_STATUS ; 
 int /*<<< orphan*/  IRQ_WAKE_THREAD ; 
 int FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (struct sprd_i2c*) ; 
 int /*<<< orphan*/  FUNC2 (struct sprd_i2c*) ; 
 int /*<<< orphan*/  FUNC3 (struct sprd_i2c*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct sprd_i2c*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static irqreturn_t FUNC5(int irq, void *dev_id)
{
	struct sprd_i2c *i2c_dev = dev_id;
	struct i2c_msg *msg = i2c_dev->msg;
	bool ack = !(FUNC0(i2c_dev->base + I2C_STATUS) & I2C_RX_ACK);
	u32 i2c_tran;

	if (msg->flags & I2C_M_RD)
		i2c_tran = i2c_dev->count >= I2C_FIFO_FULL_THLD;
	else
		i2c_tran = i2c_dev->count;

	/*
	 * If we did not get one ACK from slave when writing data, then we
	 * should finish this transmission since we got some errors.
	 *
	 * When writing data, if i2c_tran == 0 which means we have writen
	 * done all data, then we can finish this transmission.
	 *
	 * When reading data, if conut < rx fifo full threshold, which
	 * means we can read all data in one time, then we can finish this
	 * transmission too.
	 */
	if (!i2c_tran || !ack) {
		FUNC2(i2c_dev);
		FUNC1(i2c_dev);
	}

	FUNC3(i2c_dev, 0);
	FUNC4(i2c_dev, 0);

	return IRQ_WAKE_THREAD;
}