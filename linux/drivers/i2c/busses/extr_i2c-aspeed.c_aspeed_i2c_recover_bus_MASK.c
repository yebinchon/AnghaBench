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
typedef  int u32 ;
struct TYPE_2__ {int /*<<< orphan*/  timeout; } ;
struct aspeed_i2c_bus {int /*<<< orphan*/  lock; scalar_t__ base; scalar_t__ cmd_err; TYPE_1__ adap; int /*<<< orphan*/  cmd_complete; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  ASPEED_I2CD_BUS_RECOVER_CMD ; 
 int /*<<< orphan*/  ASPEED_I2CD_M_STOP_CMD ; 
 int ASPEED_I2CD_SCL_LINE_STS ; 
 int ASPEED_I2CD_SDA_LINE_STS ; 
 scalar_t__ ASPEED_I2C_CMD_REG ; 
 int FUNC0 (struct aspeed_i2c_bus*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int) ; 
 int FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 unsigned long FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static int FUNC8(struct aspeed_i2c_bus *bus)
{
	unsigned long time_left, flags;
	int ret = 0;
	u32 command;

	FUNC4(&bus->lock, flags);
	command = FUNC2(bus->base + ASPEED_I2C_CMD_REG);

	if (command & ASPEED_I2CD_SDA_LINE_STS) {
		/* Bus is idle: no recovery needed. */
		if (command & ASPEED_I2CD_SCL_LINE_STS)
			goto out;
		FUNC1(bus->dev, "SCL hung (state %x), attempting recovery\n",
			command);

		FUNC3(&bus->cmd_complete);
		FUNC7(ASPEED_I2CD_M_STOP_CMD, bus->base + ASPEED_I2C_CMD_REG);
		FUNC5(&bus->lock, flags);

		time_left = FUNC6(
				&bus->cmd_complete, bus->adap.timeout);

		FUNC4(&bus->lock, flags);
		if (time_left == 0)
			goto reset_out;
		else if (bus->cmd_err)
			goto reset_out;
		/* Recovery failed. */
		else if (!(FUNC2(bus->base + ASPEED_I2C_CMD_REG) &
			   ASPEED_I2CD_SCL_LINE_STS))
			goto reset_out;
	/* Bus error. */
	} else {
		FUNC1(bus->dev, "SDA hung (state %x), attempting recovery\n",
			command);

		FUNC3(&bus->cmd_complete);
		/* Writes 1 to 8 SCL clock cycles until SDA is released. */
		FUNC7(ASPEED_I2CD_BUS_RECOVER_CMD,
		       bus->base + ASPEED_I2C_CMD_REG);
		FUNC5(&bus->lock, flags);

		time_left = FUNC6(
				&bus->cmd_complete, bus->adap.timeout);

		FUNC4(&bus->lock, flags);
		if (time_left == 0)
			goto reset_out;
		else if (bus->cmd_err)
			goto reset_out;
		/* Recovery failed. */
		else if (!(FUNC2(bus->base + ASPEED_I2C_CMD_REG) &
			   ASPEED_I2CD_SDA_LINE_STS))
			goto reset_out;
	}

out:
	FUNC5(&bus->lock, flags);

	return ret;

reset_out:
	FUNC5(&bus->lock, flags);

	return FUNC0(bus);
}