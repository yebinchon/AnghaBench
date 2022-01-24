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
struct max7301 {int /*<<< orphan*/ * dev; int /*<<< orphan*/  write; int /*<<< orphan*/  read; } ;
struct i2c_device_id {int dummy; } ;
struct i2c_client {int /*<<< orphan*/  dev; int /*<<< orphan*/  adapter; } ;

/* Variables and functions */
 int EIO ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  I2C_FUNC_SMBUS_BYTE_DATA ; 
 int FUNC0 (struct max7301*) ; 
 struct max7301* FUNC1 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  max7300_i2c_read ; 
 int /*<<< orphan*/  max7300_i2c_write ; 

__attribute__((used)) static int FUNC3(struct i2c_client *client,
			 const struct i2c_device_id *id)
{
	struct max7301 *ts;

	if (!FUNC2(client->adapter,
			I2C_FUNC_SMBUS_BYTE_DATA))
		return -EIO;

	ts = FUNC1(&client->dev, sizeof(struct max7301), GFP_KERNEL);
	if (!ts)
		return -ENOMEM;

	ts->read = max7300_i2c_read;
	ts->write = max7300_i2c_write;
	ts->dev = &client->dev;

	return FUNC0(ts);
}