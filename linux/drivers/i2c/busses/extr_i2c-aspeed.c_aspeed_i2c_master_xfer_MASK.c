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
struct i2c_msg {int dummy; } ;
struct i2c_adapter {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  timeout; } ;
struct aspeed_i2c_bus {int msgs_count; scalar_t__ master_state; int master_xfer_result; int /*<<< orphan*/  lock; scalar_t__ base; scalar_t__ multi_master; TYPE_1__ adap; int /*<<< orphan*/  cmd_complete; scalar_t__ msgs_index; struct i2c_msg* msgs; scalar_t__ cmd_err; } ;

/* Variables and functions */
 int ASPEED_I2CD_BUS_BUSY_STS ; 
 scalar_t__ ASPEED_I2C_CMD_REG ; 
 scalar_t__ ASPEED_I2C_MASTER_INACTIVE ; 
 scalar_t__ ASPEED_I2C_MASTER_PENDING ; 
 int ETIMEDOUT ; 
 int /*<<< orphan*/  FUNC0 (struct aspeed_i2c_bus*) ; 
 int FUNC1 (struct aspeed_i2c_bus*) ; 
 struct aspeed_i2c_bus* FUNC2 (struct i2c_adapter*) ; 
 int FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 
 unsigned long FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC8(struct i2c_adapter *adap,
				  struct i2c_msg *msgs, int num)
{
	struct aspeed_i2c_bus *bus = FUNC2(adap);
	unsigned long time_left, flags;

	FUNC5(&bus->lock, flags);
	bus->cmd_err = 0;

	/* If bus is busy in a single master environment, attempt recovery. */
	if (!bus->multi_master &&
	    (FUNC3(bus->base + ASPEED_I2C_CMD_REG) &
	     ASPEED_I2CD_BUS_BUSY_STS)) {
		int ret;

		FUNC6(&bus->lock, flags);
		ret = FUNC1(bus);
		if (ret)
			return ret;
		FUNC5(&bus->lock, flags);
	}

	bus->cmd_err = 0;
	bus->msgs = msgs;
	bus->msgs_index = 0;
	bus->msgs_count = num;

	FUNC4(&bus->cmd_complete);
	FUNC0(bus);
	FUNC6(&bus->lock, flags);

	time_left = FUNC7(&bus->cmd_complete,
						bus->adap.timeout);

	if (time_left == 0) {
		/*
		 * If timed out and bus is still busy in a multi master
		 * environment, attempt recovery at here.
		 */
		if (bus->multi_master &&
		    (FUNC3(bus->base + ASPEED_I2C_CMD_REG) &
		     ASPEED_I2CD_BUS_BUSY_STS))
			FUNC1(bus);

		/*
		 * If timed out and the state is still pending, drop the pending
		 * master command.
		 */
		FUNC5(&bus->lock, flags);
		if (bus->master_state == ASPEED_I2C_MASTER_PENDING)
			bus->master_state = ASPEED_I2C_MASTER_INACTIVE;
		FUNC6(&bus->lock, flags);

		return -ETIMEDOUT;
	}

	return bus->master_xfer_result;
}