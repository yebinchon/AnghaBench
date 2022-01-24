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
struct i2c_device_id {int dummy; } ;
struct i2c_client {int /*<<< orphan*/  dev; int /*<<< orphan*/  adapter; } ;

/* Variables and functions */
 int EIO ; 
 int /*<<< orphan*/  I2C_FUNC_I2C ; 
 int FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  tda998x_ops ; 

__attribute__((used)) static int
FUNC5(struct i2c_client *client, const struct i2c_device_id *id)
{
	int ret;

	if (!FUNC2(client->adapter, I2C_FUNC_I2C)) {
		FUNC1(&client->dev, "adapter does not support I2C\n");
		return -EIO;
	}

	ret = FUNC3(&client->dev);
	if (ret)
		return ret;

	ret = FUNC0(&client->dev, &tda998x_ops);
	if (ret)
		FUNC4(&client->dev);
	return ret;
}