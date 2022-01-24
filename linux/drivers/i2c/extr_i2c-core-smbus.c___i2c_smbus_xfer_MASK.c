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
typedef  union i2c_smbus_data {int dummy; } i2c_smbus_data ;
typedef  int /*<<< orphan*/  u8 ;
typedef  int /*<<< orphan*/  u16 ;
struct i2c_adapter {int retries; TYPE_1__* algo; scalar_t__ timeout; } ;
typedef  int s32 ;
struct TYPE_2__ {int (* smbus_xfer ) (struct i2c_adapter*,int /*<<< orphan*/ ,unsigned short,char,int /*<<< orphan*/ ,int,union i2c_smbus_data*) ;int (* smbus_xfer_atomic ) (struct i2c_adapter*,int /*<<< orphan*/ ,unsigned short,char,int /*<<< orphan*/ ,int,union i2c_smbus_data*) ;int /*<<< orphan*/  master_xfer; scalar_t__ master_xfer_atomic; } ;

/* Variables and functions */
 int EAGAIN ; 
 int EOPNOTSUPP ; 
 unsigned short I2C_CLIENT_PEC ; 
 unsigned short I2C_CLIENT_SCCB ; 
 unsigned short I2C_M_TEN ; 
 int FUNC0 (struct i2c_adapter*) ; 
 scalar_t__ FUNC1 () ; 
 int FUNC2 (struct i2c_adapter*,int /*<<< orphan*/ ,unsigned short,char,int /*<<< orphan*/ ,int,union i2c_smbus_data*) ; 
 unsigned long jiffies ; 
 scalar_t__ FUNC3 (unsigned long,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (struct i2c_adapter*,int /*<<< orphan*/ ,unsigned short,char,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (struct i2c_adapter*,int /*<<< orphan*/ ,unsigned short,char,int /*<<< orphan*/ ,int,union i2c_smbus_data*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct i2c_adapter*,int /*<<< orphan*/ ,unsigned short,char,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC7 (struct i2c_adapter*,int /*<<< orphan*/ ,unsigned short,char,int /*<<< orphan*/ ,int,union i2c_smbus_data*) ; 

s32 FUNC8(struct i2c_adapter *adapter, u16 addr,
		     unsigned short flags, char read_write,
		     u8 command, int protocol, union i2c_smbus_data *data)
{
	int (*xfer_func)(struct i2c_adapter *adap, u16 addr,
			 unsigned short flags, char read_write,
			 u8 command, int size, union i2c_smbus_data *data);
	unsigned long orig_jiffies;
	int try;
	s32 res;

	res = FUNC0(adapter);
	if (res)
		return res;

	/* If enabled, the following two tracepoints are conditional on
	 * read_write and protocol.
	 */
	FUNC7(adapter, addr, flags, read_write,
			  command, protocol, data);
	FUNC4(adapter, addr, flags, read_write,
			 command, protocol);

	flags &= I2C_M_TEN | I2C_CLIENT_PEC | I2C_CLIENT_SCCB;

	xfer_func = adapter->algo->smbus_xfer;
	if (FUNC1()) {
		if (adapter->algo->smbus_xfer_atomic)
			xfer_func = adapter->algo->smbus_xfer_atomic;
		else if (adapter->algo->master_xfer_atomic)
			xfer_func = NULL; /* fallback to I2C emulation */
	}

	if (xfer_func) {
		/* Retry automatically on arbitration loss */
		orig_jiffies = jiffies;
		for (res = 0, try = 0; try <= adapter->retries; try++) {
			res = xfer_func(adapter, addr, flags, read_write,
					command, protocol, data);
			if (res != -EAGAIN)
				break;
			if (FUNC3(jiffies,
				       orig_jiffies + adapter->timeout))
				break;
		}

		if (res != -EOPNOTSUPP || !adapter->algo->master_xfer)
			goto trace;
		/*
		 * Fall back to i2c_smbus_xfer_emulated if the adapter doesn't
		 * implement native support for the SMBus operation.
		 */
	}

	res = FUNC2(adapter, addr, flags, read_write,
				      command, protocol, data);

trace:
	/* If enabled, the reply tracepoint is conditional on read_write. */
	FUNC5(adapter, addr, flags, read_write,
			  command, protocol, data, res);
	FUNC6(adapter, addr, flags, read_write,
			   command, protocol, res);

	return res;
}