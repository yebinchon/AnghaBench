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
struct fsi_i2c_port {int /*<<< orphan*/  port; struct fsi_i2c_master* master; } ;
struct fsi_i2c_master {struct fsi_device* fsi; } ;
struct fsi_device {int dummy; } ;

/* Variables and functions */
 int ETIMEDOUT ; 
 scalar_t__ I2C_ABORT_TIMEOUT ; 
 int /*<<< orphan*/  I2C_CMD_SLEEP_MAX_US ; 
 int /*<<< orphan*/  I2C_CMD_SLEEP_MIN_US ; 
 int I2C_CMD_WITH_STOP ; 
 int /*<<< orphan*/  I2C_FSI_CMD ; 
 int /*<<< orphan*/  I2C_FSI_STAT ; 
 int I2C_STAT_CMD_COMP ; 
 int I2C_STAT_LOST_ARB ; 
 int I2C_STAT_PARITY ; 
 int I2C_STAT_SDA_IN ; 
 int I2C_STAT_STOP_ERR ; 
 int FUNC0 (struct fsi_device*,int /*<<< orphan*/ ,int*) ; 
 int FUNC1 (struct fsi_i2c_master*,struct fsi_i2c_port*) ; 
 int FUNC2 (struct fsi_i2c_master*,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct fsi_device*,int /*<<< orphan*/ ,int*) ; 
 unsigned long jiffies ; 
 scalar_t__ FUNC4 (scalar_t__,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(struct fsi_i2c_port *port, u32 status)
{
	int rc;
	unsigned long start;
	u32 cmd = I2C_CMD_WITH_STOP;
	u32 stat;
	struct fsi_i2c_master *i2c = port->master;
	struct fsi_device *fsi = i2c->fsi;

	rc = FUNC2(i2c, port->port);
	if (rc)
		return rc;

	rc = FUNC0(fsi, I2C_FSI_STAT, &stat);
	if (rc)
		return rc;

	/* if sda is low, peform full bus reset */
	if (!(stat & I2C_STAT_SDA_IN)) {
		rc = FUNC1(i2c, port);
		if (rc)
			return rc;
	}

	/* skip final stop command for these errors */
	if (status & (I2C_STAT_PARITY | I2C_STAT_LOST_ARB | I2C_STAT_STOP_ERR))
		return 0;

	/* write stop command */
	rc = FUNC3(fsi, I2C_FSI_CMD, &cmd);
	if (rc)
		return rc;

	/* wait until we see command complete in the master */
	start = jiffies;

	do {
		rc = FUNC0(fsi, I2C_FSI_STAT, &status);
		if (rc)
			return rc;

		if (status & I2C_STAT_CMD_COMP)
			return 0;

		FUNC5(I2C_CMD_SLEEP_MIN_US, I2C_CMD_SLEEP_MAX_US);
	} while (FUNC4(start + I2C_ABORT_TIMEOUT, jiffies));

	return -ETIMEDOUT;
}