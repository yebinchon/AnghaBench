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
struct i2c_client {int dummy; } ;
struct device {int dummy; } ;
struct adt7411_data {int vref_cached; int /*<<< orphan*/  update_lock; struct i2c_client* client; } ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int FUNC1 (int) ; 
 long FUNC2 (long,int) ; 
 int EOPNOTSUPP ; 
 int FUNC3 (struct device*) ; 
 long FUNC4 (long,int /*<<< orphan*/ ,int) ; 
 struct adt7411_data* FUNC5 (struct device*) ; 
#define  hwmon_in_max 129 
#define  hwmon_in_min 128 
 int FUNC6 (struct i2c_client*,int,long) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC9(struct device *dev, u32 attr, int channel,
				 long val)
{
	struct adt7411_data *data = FUNC5(dev);
	struct i2c_client *client = data->client;
	int ret, reg;

	FUNC7(&data->update_lock);
	ret = FUNC3(dev);
	if (ret < 0)
		goto exit_unlock;
	val = FUNC4(val, 0, 255 * data->vref_cached / 256);
	val = FUNC2(val * 256, data->vref_cached);

	switch (attr) {
	case hwmon_in_min:
		reg = FUNC1(channel);
		break;
	case hwmon_in_max:
		reg = FUNC0(channel);
		break;
	default:
		ret = -EOPNOTSUPP;
		goto exit_unlock;
	}

	ret = FUNC6(client, reg, val);
 exit_unlock:
	FUNC8(&data->update_lock);
	return ret;
}