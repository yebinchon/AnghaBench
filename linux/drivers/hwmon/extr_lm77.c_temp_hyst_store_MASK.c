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
struct lm77_data {long* temp; int /*<<< orphan*/  update_lock; struct i2c_client* client; } ;
struct i2c_client {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  int ssize_t ;

/* Variables and functions */
 int /*<<< orphan*/  LM77_REG_TEMP_HYST ; 
 int /*<<< orphan*/  LM77_TEMP_MAX ; 
 int /*<<< orphan*/  LM77_TEMP_MIN ; 
 int /*<<< orphan*/  FUNC0 (long) ; 
 long FUNC1 (long,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct lm77_data* FUNC2 (struct device*) ; 
 int FUNC3 (char const*,int,long*) ; 
 int /*<<< orphan*/  FUNC4 (struct i2c_client*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 size_t t_crit ; 
 size_t t_hyst ; 

__attribute__((used)) static ssize_t FUNC7(struct device *dev,
			       struct device_attribute *devattr,
			       const char *buf, size_t count)
{
	struct lm77_data *data = FUNC2(dev);
	struct i2c_client *client = data->client;
	long val;
	int err;

	err = FUNC3(buf, 10, &val);
	if (err)
		return err;

	FUNC5(&data->update_lock);
	val = FUNC1(data->temp[t_crit] - val, LM77_TEMP_MIN, LM77_TEMP_MAX);
	data->temp[t_hyst] = val;
	FUNC4(client, LM77_REG_TEMP_HYST,
			 FUNC0(data->temp[t_hyst]));
	FUNC6(&data->update_lock);
	return count;
}