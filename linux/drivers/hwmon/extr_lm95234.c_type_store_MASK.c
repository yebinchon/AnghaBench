#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
struct lm95234_data {int valid; int /*<<< orphan*/  update_lock; int /*<<< orphan*/  sensor_type; int /*<<< orphan*/  client; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  int ssize_t ;
struct TYPE_2__ {int /*<<< orphan*/  index; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  LM95234_REG_REM_MODEL ; 
 struct lm95234_data* FUNC0 (struct device*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC2 (char const*,int,unsigned long*) ; 
 int FUNC3 (struct lm95234_data*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC6 (struct device_attribute*) ; 

__attribute__((used)) static ssize_t FUNC7(struct device *dev, struct device_attribute *attr,
			  const char *buf, size_t count)
{
	struct lm95234_data *data = FUNC0(dev);
	unsigned long val;
	u8 mask = FUNC6(attr)->index;
	int ret = FUNC3(data);

	if (ret)
		return ret;

	ret = FUNC2(buf, 10, &val);
	if (ret < 0)
		return ret;

	if (val != 1 && val != 2)
		return -EINVAL;

	FUNC4(&data->update_lock);
	if (val == 1)
		data->sensor_type |= mask;
	else
		data->sensor_type &= ~mask;
	data->valid = false;
	FUNC1(data->client, LM95234_REG_REM_MODEL,
				  data->sensor_type);
	FUNC5(&data->update_lock);

	return count;
}