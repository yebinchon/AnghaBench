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
struct i2c_client {int /*<<< orphan*/  irq; int /*<<< orphan*/  dev; int /*<<< orphan*/  adapter; } ;
struct cyttsp {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  CY_I2C_DATA_SIZE ; 
 int EIO ; 
 int /*<<< orphan*/  I2C_FUNC_I2C ; 
 scalar_t__ FUNC0 (struct cyttsp*) ; 
 int FUNC1 (struct cyttsp*) ; 
 int /*<<< orphan*/  cyttsp_i2c_bus_ops ; 
 struct cyttsp* FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct i2c_client*,struct cyttsp*) ; 

__attribute__((used)) static int FUNC6(struct i2c_client *client,
				      const struct i2c_device_id *id)
{
	struct cyttsp *ts;

	if (!FUNC4(client->adapter, I2C_FUNC_I2C)) {
		FUNC3(&client->dev, "I2C functionality not Supported\n");
		return -EIO;
	}

	ts = FUNC2(&cyttsp_i2c_bus_ops, &client->dev, client->irq,
			  CY_I2C_DATA_SIZE);

	if (FUNC0(ts))
		return FUNC1(ts);

	FUNC5(client, ts);
	return 0;
}