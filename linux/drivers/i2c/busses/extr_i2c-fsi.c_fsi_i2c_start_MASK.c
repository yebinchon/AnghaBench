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
struct i2c_msg {int flags; int /*<<< orphan*/  len; int /*<<< orphan*/  addr; } ;
struct fsi_i2c_port {scalar_t__ xfrd; struct fsi_i2c_master* master; } ;
struct fsi_i2c_master {int /*<<< orphan*/  fsi; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  I2C_CMD_ADDR ; 
 int /*<<< orphan*/  I2C_CMD_LEN ; 
 int I2C_CMD_READ ; 
 int I2C_CMD_WITH_ADDR ; 
 int I2C_CMD_WITH_START ; 
 int I2C_CMD_WITH_STOP ; 
 int /*<<< orphan*/  I2C_FSI_CMD ; 
 int I2C_M_RD ; 
 int I2C_M_STOP ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 

__attribute__((used)) static int FUNC2(struct fsi_i2c_port *port, struct i2c_msg *msg,
			 bool stop)
{
	struct fsi_i2c_master *i2c = port->master;
	u32 cmd = I2C_CMD_WITH_START | I2C_CMD_WITH_ADDR;

	port->xfrd = 0;

	if (msg->flags & I2C_M_RD)
		cmd |= I2C_CMD_READ;

	if (stop || msg->flags & I2C_M_STOP)
		cmd |= I2C_CMD_WITH_STOP;

	cmd |= FUNC0(I2C_CMD_ADDR, msg->addr);
	cmd |= FUNC0(I2C_CMD_LEN, msg->len);

	return FUNC1(i2c->fsi, I2C_FSI_CMD, &cmd);
}