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
struct sensor_device_attribute_2 {size_t nr; int /*<<< orphan*/  index; } ;
struct max6642_data {int /*<<< orphan*/  update_lock; int /*<<< orphan*/ * temp_high; int /*<<< orphan*/  client; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  int ssize_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 struct max6642_data* FUNC1 (struct device*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC3 (char const*,int,unsigned long*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (unsigned long) ; 
 struct sensor_device_attribute_2* FUNC7 (struct device_attribute*) ; 

__attribute__((used)) static ssize_t FUNC8(struct device *dev,
			      struct device_attribute *attr, const char *buf,
			      size_t count)
{
	struct sensor_device_attribute_2 *attr2 = FUNC7(attr);
	struct max6642_data *data = FUNC1(dev);
	unsigned long val;
	int err;

	err = FUNC3(buf, 10, &val);
	if (err < 0)
		return err;

	FUNC4(&data->update_lock);
	data->temp_high[attr2->nr] = FUNC0(FUNC6(val), 0, 255);
	FUNC2(data->client, attr2->index,
				  data->temp_high[attr2->nr]);
	FUNC5(&data->update_lock);
	return count;
}