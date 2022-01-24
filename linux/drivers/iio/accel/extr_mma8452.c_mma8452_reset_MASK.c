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
struct i2c_client {int dummy; } ;

/* Variables and functions */
 int EIO ; 
 int ETIMEDOUT ; 
 int /*<<< orphan*/  MMA8452_CTRL_REG2 ; 
 int MMA8452_CTRL_REG2_RST ; 
 int FUNC0 (struct i2c_client*,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct i2c_client*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int,int) ; 

__attribute__((used)) static int FUNC3(struct i2c_client *client)
{
	int i;
	int ret;

	ret = FUNC1(client,	MMA8452_CTRL_REG2,
					MMA8452_CTRL_REG2_RST);
	if (ret < 0)
		return ret;

	for (i = 0; i < 10; i++) {
		FUNC2(100, 200);
		ret = FUNC0(client, MMA8452_CTRL_REG2);
		if (ret == -EIO)
			continue; /* I2C comm reset */
		if (ret < 0)
			return ret;
		if (!(ret & MMA8452_CTRL_REG2_RST))
			return 0;
	}

	return -ETIMEDOUT;
}