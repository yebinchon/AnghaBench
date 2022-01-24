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
typedef  int u32 ;
struct lm90_data {int /*<<< orphan*/  update_lock; struct i2c_client* client; } ;
struct i2c_client {int dummy; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int EOPNOTSUPP ; 
 int /*<<< orphan*/  FUNC0 (long,int /*<<< orphan*/ ,int) ; 
 struct lm90_data* FUNC1 (struct device*) ; 
#define  hwmon_chip_update_interval 128 
 int FUNC2 (struct i2c_client*,struct lm90_data*,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct device*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC6(struct device *dev, u32 attr, int channel, long val)
{
	struct lm90_data *data = FUNC1(dev);
	struct i2c_client *client = data->client;
	int err;

	FUNC4(&data->update_lock);

	err = FUNC3(dev);
	if (err)
		goto error;

	switch (attr) {
	case hwmon_chip_update_interval:
		err = FUNC2(client, data,
					FUNC0(val, 0, 100000));
		break;
	default:
		err = -EOPNOTSUPP;
		break;
	}
error:
	FUNC5(&data->update_lock);

	return err;
}