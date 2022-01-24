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
struct vprbrd_i2c_status {int dummy; } ;
struct vprbrd_i2c_addr_msg {int unknown2; int unknown3; int unknown1; void* len; int /*<<< orphan*/  addr; void* cmd; } ;
struct vprbrd {int /*<<< orphan*/  lock; int /*<<< orphan*/  usb_dev; scalar_t__ buf; } ;
struct i2c_msg {int flags; int /*<<< orphan*/  len; int /*<<< orphan*/  addr; } ;
struct i2c_adapter {int /*<<< orphan*/  dev; scalar_t__ algo_data; } ;

/* Variables and functions */
 int I2C_M_RD ; 
 void* VPRBRD_I2C_CMD_ADDR ; 
 void* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,int,...) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ ,struct vprbrd_i2c_addr_msg*) ; 
 int FUNC5 (struct vprbrd*,struct i2c_msg*) ; 
 int FUNC6 (struct i2c_adapter*,struct vprbrd_i2c_status*,int) ; 
 int FUNC7 (struct vprbrd*,struct i2c_msg*) ; 

__attribute__((used)) static int FUNC8(struct i2c_adapter *i2c, struct i2c_msg *msgs,
		int num)
{
	struct i2c_msg *pmsg;
	int i, ret,
		error = 0;
	struct vprbrd *vb = (struct vprbrd *)i2c->algo_data;
	struct vprbrd_i2c_addr_msg *amsg =
		(struct vprbrd_i2c_addr_msg *)vb->buf;
	struct vprbrd_i2c_status *smsg = (struct vprbrd_i2c_status *)vb->buf;

	FUNC1(&i2c->dev, "master xfer %d messages:\n", num);

	for (i = 0 ; i < num ; i++) {
		pmsg = &msgs[i];

		FUNC1(&i2c->dev,
			"  %d: %s (flags %d) %d bytes to 0x%02x\n",
			i, pmsg->flags & I2C_M_RD ? "read" : "write",
			pmsg->flags, pmsg->len, pmsg->addr);

		FUNC2(&vb->lock);
		/* directly send the message */
		if (pmsg->flags & I2C_M_RD) {
			/* read data */
			amsg->cmd = VPRBRD_I2C_CMD_ADDR;
			amsg->unknown2 = 0x00;
			amsg->unknown3 = 0x00;
			amsg->addr = pmsg->addr;
			amsg->unknown1 = 0x01;
			amsg->len = FUNC0(pmsg->len);
			/* send the addr and len, we're interested to board */
			ret = FUNC4(vb->usb_dev, amsg);
			if (ret < 0)
				error = ret;

			ret = FUNC5(vb, pmsg);
			if (ret < 0)
				error = ret;

			ret = FUNC6(i2c, smsg, error);
			if (ret < 0)
				error = ret;
			/* in case of protocol error, return the error */
			if (error < 0)
				goto error;
		} else {
			/* write data */
			ret = FUNC7(vb, pmsg);

			amsg->cmd = VPRBRD_I2C_CMD_ADDR;
			amsg->unknown2 = 0x00;
			amsg->unknown3 = 0x00;
			amsg->addr = pmsg->addr;
			amsg->unknown1 = 0x00;
			amsg->len = FUNC0(pmsg->len);
			/* send the addr, the data goes to to board */
			ret = FUNC4(vb->usb_dev, amsg);
			if (ret < 0)
				error = ret;

			ret = FUNC6(i2c, smsg, error);
			if (ret < 0)
				error = ret;

			if (error < 0)
				goto error;
		}
		FUNC3(&vb->lock);
	}
	return num;
error:
	FUNC3(&vb->lock);
	return error;
}