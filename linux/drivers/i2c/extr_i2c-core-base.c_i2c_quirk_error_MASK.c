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
struct i2c_msg {int flags; int /*<<< orphan*/  len; int /*<<< orphan*/  addr; } ;
struct i2c_adapter {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int EOPNOTSUPP ; 
 int I2C_M_RD ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static int FUNC1(struct i2c_adapter *adap, struct i2c_msg *msg, char *err_msg)
{
	FUNC0(&adap->dev, "adapter quirk: %s (addr 0x%04x, size %u, %s)\n",
			    err_msg, msg->addr, msg->len,
			    msg->flags & I2C_M_RD ? "read" : "write");
	return -EOPNOTSUPP;
}