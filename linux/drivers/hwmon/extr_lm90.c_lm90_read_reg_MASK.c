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
typedef  int /*<<< orphan*/  u8 ;
struct i2c_client {int flags; } ;

/* Variables and functions */
 int I2C_CLIENT_PEC ; 
 int FUNC0 (struct i2c_client*,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct i2c_client*) ; 
 int FUNC2 (struct i2c_client*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct i2c_client *client, u8 reg)
{
	int err;

	if (client->flags & I2C_CLIENT_PEC) {
		err = FUNC0(client, reg);
		if (err >= 0)
			err = FUNC1(client);
	} else
		err = FUNC2(client, reg);

	return err;
}