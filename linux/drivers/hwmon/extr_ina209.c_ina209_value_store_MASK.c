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
struct sensor_device_attribute {int index; } ;
struct ina209_data {int* regs; int /*<<< orphan*/  update_lock; int /*<<< orphan*/  client; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  int ssize_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct ina209_data*) ; 
 int FUNC1 (struct ina209_data*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int,int) ; 
 int FUNC3 (int,int,long) ; 
 struct ina209_data* FUNC4 (struct device*) ; 
 int FUNC5 (char const*,int,long*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 struct sensor_device_attribute* FUNC8 (struct device_attribute*) ; 

__attribute__((used)) static ssize_t FUNC9(struct device *dev,
				  struct device_attribute *da,
				  const char *buf, size_t count)
{
	struct ina209_data *data = FUNC4(dev);
	struct sensor_device_attribute *attr = FUNC8(da);
	int reg = attr->index;
	long val;
	int ret;

	if (FUNC0(data))
		return FUNC1(data);

	ret = FUNC5(buf, 10, &val);
	if (ret < 0)
		return ret;

	FUNC6(&data->update_lock);
	ret = FUNC3(reg, data->regs[reg], val);
	if (ret < 0) {
		count = ret;
		goto abort;
	}
	FUNC2(data->client, reg, ret);
	data->regs[reg] = ret;
abort:
	FUNC7(&data->update_lock);
	return count;
}