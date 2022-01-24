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
struct i2c_device_id {int /*<<< orphan*/  name; } ;
struct i2c_client {int /*<<< orphan*/  dev; int /*<<< orphan*/  adapter; } ;

/* Variables and functions */
 int EOPNOTSUPP ; 
 int /*<<< orphan*/  I2C_FUNC_SMBUS_WORD_DATA ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  mpl115_i2c_ops ; 
 int FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC2(struct i2c_client *client,
			 const struct i2c_device_id *id)
{
	if (!FUNC0(client->adapter, I2C_FUNC_SMBUS_WORD_DATA))
		return -EOPNOTSUPP;

	return FUNC1(&client->dev, id->name, &mpl115_i2c_ops);
}