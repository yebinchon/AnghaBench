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
struct i2c_msg {int len; int flags; } ;
struct amd_i2c_common {struct i2c_msg* msg; } ;
struct amd_i2c_dev {struct amd_i2c_common common; } ;

/* Variables and functions */
 int EIO ; 
 int I2C_M_RD ; 
 int /*<<< orphan*/  FUNC0 (struct amd_i2c_common*,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct amd_i2c_dev*) ; 
 scalar_t__ FUNC2 (struct amd_i2c_common*) ; 
 int /*<<< orphan*/  FUNC3 (struct amd_i2c_dev*) ; 
 int /*<<< orphan*/  i2c_read ; 
 int /*<<< orphan*/  i2c_write ; 

__attribute__((used)) static int FUNC4(struct amd_i2c_dev *i2c_dev, struct i2c_msg *pmsg)
{
	struct amd_i2c_common *i2c_common = &i2c_dev->common;

	FUNC3(i2c_dev);
	i2c_common->msg = pmsg;

	if (pmsg->len > 32)
		if (FUNC2(i2c_common))
			return -EIO;

	if (pmsg->flags & I2C_M_RD)
		FUNC0(i2c_common, i2c_read);
	else
		FUNC0(i2c_common, i2c_write);

	return FUNC1(i2c_dev);
}