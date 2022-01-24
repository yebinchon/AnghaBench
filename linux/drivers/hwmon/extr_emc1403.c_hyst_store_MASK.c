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
struct thermal_data {int /*<<< orphan*/  mutex; struct regmap* regmap; } ;
struct sensor_device_attribute {int /*<<< orphan*/  index; } ;
struct regmap {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  int ssize_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,int) ; 
 int EINVAL ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 struct thermal_data* FUNC2 (struct device*) ; 
 scalar_t__ FUNC3 (char const*,int,unsigned long*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int FUNC6 (struct regmap*,int /*<<< orphan*/ ,unsigned int*) ; 
 int FUNC7 (struct regmap*,int,int) ; 
 struct sensor_device_attribute* FUNC8 (struct device_attribute*) ; 

__attribute__((used)) static ssize_t FUNC9(struct device *dev, struct device_attribute *attr,
			  const char *buf, size_t count)
{
	struct sensor_device_attribute *sda = FUNC8(attr);
	struct thermal_data *data = FUNC2(dev);
	struct regmap *regmap = data->regmap;
	unsigned int limit;
	int retval;
	int hyst;
	unsigned long val;

	if (FUNC3(buf, 10, &val))
		return -EINVAL;

	FUNC4(&data->mutex);
	retval = FUNC6(regmap, sda->index, &limit);
	if (retval < 0)
		goto fail;

	hyst = limit * 1000 - val;
	hyst = FUNC1(FUNC0(hyst, 1000), 0, 255);
	retval = FUNC7(regmap, 0x21, hyst);
	if (retval == 0)
		retval = count;
fail:
	FUNC5(&data->mutex);
	return retval;
}