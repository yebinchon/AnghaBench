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
struct i2c_client {int /*<<< orphan*/  dev; } ;
struct auo_pixcir_ts {struct i2c_client* client; } ;

/* Variables and functions */
 int AUO_PIXCIR_POWER_MASK ; 
 int /*<<< orphan*/  AUO_PIXCIR_REG_POWER_MODE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int) ; 
 int FUNC1 (struct i2c_client*,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct i2c_client*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC3(struct auo_pixcir_ts *ts, int mode)
{
	struct i2c_client *client = ts->client;
	int ret;

	ret = FUNC1(client, AUO_PIXCIR_REG_POWER_MODE);
	if (ret < 0) {
		FUNC0(&client->dev, "unable to read reg %Xh, %d\n",
			AUO_PIXCIR_REG_POWER_MODE, ret);
		return ret;
	}

	ret &= ~AUO_PIXCIR_POWER_MASK;
	ret |= mode;

	ret = FUNC2(client, AUO_PIXCIR_REG_POWER_MODE, ret);
	if (ret) {
		FUNC0(&client->dev, "unable to write reg %Xh, %d\n",
			AUO_PIXCIR_REG_POWER_MODE, ret);
		return ret;
	}

	return 0;
}