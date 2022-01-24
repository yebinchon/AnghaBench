#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int u16 ;
struct i2c_msg {int dummy; } ;
struct dibx000_i2c_master {int* i2c_write_buffer; int* i2c_read_buffer; int /*<<< orphan*/  i2c_buffer_lock; TYPE_1__* msg; int /*<<< orphan*/  i2c_adap; int /*<<< orphan*/  i2c_addr; } ;
struct TYPE_3__ {int* buf; int len; scalar_t__ flags; int /*<<< orphan*/  addr; } ;

/* Variables and functions */
 scalar_t__ I2C_M_RD ; 
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int FUNC1 (int /*<<< orphan*/ ,TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static u16 FUNC5(struct dibx000_i2c_master *mst, u16 reg)
{
	u16 ret;

	if (FUNC3(&mst->i2c_buffer_lock) < 0) {
		FUNC0("could not acquire lock\n");
		return 0;
	}

	mst->i2c_write_buffer[0] = reg >> 8;
	mst->i2c_write_buffer[1] = reg & 0xff;

	FUNC2(mst->msg, 0, 2 * sizeof(struct i2c_msg));
	mst->msg[0].addr = mst->i2c_addr;
	mst->msg[0].flags = 0;
	mst->msg[0].buf = mst->i2c_write_buffer;
	mst->msg[0].len = 2;
	mst->msg[1].addr = mst->i2c_addr;
	mst->msg[1].flags = I2C_M_RD;
	mst->msg[1].buf = mst->i2c_read_buffer;
	mst->msg[1].len = 2;

	if (FUNC1(mst->i2c_adap, mst->msg, 2) != 2)
		FUNC0("i2c read error on %d\n", reg);

	ret = (mst->i2c_read_buffer[0] << 8) | mst->i2c_read_buffer[1];
	FUNC4(&mst->i2c_buffer_lock);

	return ret;
}