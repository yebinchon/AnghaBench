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
struct i2c_msg {int flags; int len; unsigned char* buf; int /*<<< orphan*/  addr; } ;
struct i2c_adapter {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int CMD_GET_STATUS ; 
 int CMD_I2C_IO ; 
 int CMD_I2C_IO_BEGIN ; 
 int CMD_I2C_IO_END ; 
 int ENOMEM ; 
 int EREMOTEIO ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int I2C_M_RD ; 
 unsigned char STATUS_ADDRESS_NAK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,unsigned char,...) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC2 (unsigned char*) ; 
 unsigned char* FUNC3 (int,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct i2c_adapter*,int,int,int /*<<< orphan*/ ,unsigned char*,int) ; 
 int FUNC5 (struct i2c_adapter*,int,int,int /*<<< orphan*/ ,unsigned char*,int) ; 

__attribute__((used)) static int FUNC6(struct i2c_adapter *adapter, struct i2c_msg *msgs, int num)
{
	unsigned char *pstatus;
	struct i2c_msg *pmsg;
	int i, ret;

	FUNC0(&adapter->dev, "master xfer %d messages:\n", num);

	pstatus = FUNC3(sizeof(*pstatus), GFP_KERNEL);
	if (!pstatus)
		return -ENOMEM;

	for (i = 0 ; i < num ; i++) {
		int cmd = CMD_I2C_IO;

		if (i == 0)
			cmd |= CMD_I2C_IO_BEGIN;

		if (i == num-1)
			cmd |= CMD_I2C_IO_END;

		pmsg = &msgs[i];

		FUNC0(&adapter->dev,
			"  %d: %s (flags %d) %d bytes to 0x%02x\n",
			i, pmsg->flags & I2C_M_RD ? "read" : "write",
			pmsg->flags, pmsg->len, pmsg->addr);

		/* and directly send the message */
		if (pmsg->flags & I2C_M_RD) {
			/* read data */
			if (FUNC4(adapter, cmd,
				     pmsg->flags, pmsg->addr,
				     pmsg->buf, pmsg->len) != pmsg->len) {
				FUNC1(&adapter->dev,
					"failure reading data\n");
				ret = -EREMOTEIO;
				goto out;
			}
		} else {
			/* write data */
			if (FUNC5(adapter, cmd,
				      pmsg->flags, pmsg->addr,
				      pmsg->buf, pmsg->len) != pmsg->len) {
				FUNC1(&adapter->dev,
					"failure writing data\n");
				ret = -EREMOTEIO;
				goto out;
			}
		}

		/* read status */
		if (FUNC4(adapter, CMD_GET_STATUS, 0, 0, pstatus, 1) != 1) {
			FUNC1(&adapter->dev, "failure reading status\n");
			ret = -EREMOTEIO;
			goto out;
		}

		FUNC0(&adapter->dev, "  status = %d\n", *pstatus);
		if (*pstatus == STATUS_ADDRESS_NAK) {
			ret = -EREMOTEIO;
			goto out;
		}
	}

	ret = i;
out:
	FUNC2(pstatus);
	return ret;
}