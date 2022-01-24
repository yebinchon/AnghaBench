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
struct sensor_device_attribute_2 {size_t index; size_t nr; } ;
struct max16065_data {int /*<<< orphan*/  update_lock; int /*<<< orphan*/  client; int /*<<< orphan*/ * range; int /*<<< orphan*/ ** limit; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  int ssize_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (size_t,size_t) ; 
 int FUNC2 (unsigned long,int /*<<< orphan*/ ) ; 
 struct max16065_data* FUNC3 (struct device*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int FUNC5 (char const*,int,unsigned long*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 struct sensor_device_attribute_2* FUNC8 (struct device_attribute*) ; 
 scalar_t__ FUNC9 (int) ; 

__attribute__((used)) static ssize_t FUNC10(struct device *dev,
				    struct device_attribute *da,
				    const char *buf, size_t count)
{
	struct sensor_device_attribute_2 *attr2 = FUNC8(da);
	struct max16065_data *data = FUNC3(dev);
	unsigned long val;
	int err;
	int limit;

	err = FUNC5(buf, 10, &val);
	if (FUNC9(err < 0))
		return err;

	limit = FUNC2(val, data->range[attr2->index]);

	FUNC6(&data->update_lock);
	data->limit[attr2->nr][attr2->index]
	  = FUNC0(limit, data->range[attr2->index]);
	FUNC4(data->client,
				  FUNC1(attr2->nr, attr2->index),
				  limit);
	FUNC7(&data->update_lock);

	return count;
}