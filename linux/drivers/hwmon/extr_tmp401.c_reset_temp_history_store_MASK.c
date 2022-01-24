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
struct tmp401_data {int /*<<< orphan*/  update_lock; scalar_t__ valid; struct i2c_client* client; } ;
struct i2c_client {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  size_t ssize_t ;

/* Variables and functions */
 size_t EINVAL ; 
 int /*<<< orphan*/ ** TMP401_TEMP_MSB_WRITE ; 
 int /*<<< orphan*/  FUNC0 (struct device*,char*,long) ; 
 struct tmp401_data* FUNC1 (struct device*) ; 
 int /*<<< orphan*/  FUNC2 (struct i2c_client*,int /*<<< orphan*/ ,long) ; 
 scalar_t__ FUNC3 (char const*,int,long*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static ssize_t FUNC6(struct device *dev,
					struct device_attribute *devattr,
					const char *buf, size_t count)
{
	struct tmp401_data *data = FUNC1(dev);
	struct i2c_client *client = data->client;
	long val;

	if (FUNC3(buf, 10, &val))
		return -EINVAL;

	if (val != 1) {
		FUNC0(dev,
			"temp_reset_history value %ld not supported. Use 1 to reset the history!\n",
			val);
		return -EINVAL;
	}
	FUNC4(&data->update_lock);
	FUNC2(client, TMP401_TEMP_MSB_WRITE[5][0], val);
	data->valid = 0;
	FUNC5(&data->update_lock);

	return count;
}