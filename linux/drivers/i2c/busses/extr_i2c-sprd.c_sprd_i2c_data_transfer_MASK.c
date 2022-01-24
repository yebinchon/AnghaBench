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
typedef  scalar_t__ u32 ;
struct sprd_i2c {scalar_t__ count; int /*<<< orphan*/  buf; struct i2c_msg* msg; } ;
struct i2c_msg {int flags; } ;

/* Variables and functions */
 scalar_t__ I2C_FIFO_DEEP ; 
 scalar_t__ I2C_FIFO_FULL_THLD ; 
 int I2C_M_RD ; 
 int /*<<< orphan*/  FUNC0 (struct sprd_i2c*,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (struct sprd_i2c*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct sprd_i2c*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct sprd_i2c*,int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static void FUNC4(struct sprd_i2c *i2c_dev)
{
	u32 i2c_count = i2c_dev->count;
	u32 need_tran = i2c_count <= I2C_FIFO_DEEP ? i2c_count : I2C_FIFO_DEEP;
	struct i2c_msg *msg = i2c_dev->msg;

	if (msg->flags & I2C_M_RD) {
		FUNC0(i2c_dev, i2c_dev->buf, I2C_FIFO_FULL_THLD);
		i2c_dev->count -= I2C_FIFO_FULL_THLD;
		i2c_dev->buf += I2C_FIFO_FULL_THLD;

		/*
		 * If the read data count is larger than rx fifo full threshold,
		 * we should enable the rx fifo full interrupt to read data
		 * again.
		 */
		if (i2c_dev->count >= I2C_FIFO_FULL_THLD)
			FUNC2(i2c_dev, 1);
	} else {
		FUNC3(i2c_dev, i2c_dev->buf, need_tran);
		i2c_dev->buf += need_tran;
		i2c_dev->count -= need_tran;

		/*
		 * If the write data count is arger than tx fifo depth which
		 * means we can not write all data in one time, then we should
		 * enable the tx fifo empty interrupt to write again.
		 */
		if (i2c_count > I2C_FIFO_DEEP)
			FUNC1(i2c_dev, 1);
	}
}