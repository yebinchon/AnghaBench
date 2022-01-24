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

/* Variables and functions */
 int ENODEV ; 
 int I2C_FUNC_SMBUS_BYTE_DATA ; 
 int I2C_FUNC_SMBUS_WORD_DATA ; 
 int /*<<< orphan*/  adt7410_i2c_ops ; 
 int FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC2(struct i2c_client *client,
	const struct i2c_device_id *id)
{
	if (!FUNC1(client->adapter,
			I2C_FUNC_SMBUS_BYTE_DATA | I2C_FUNC_SMBUS_WORD_DATA))
		return -ENODEV;

	return FUNC0(&client->dev, NULL, client->irq, &adt7410_i2c_ops);
}