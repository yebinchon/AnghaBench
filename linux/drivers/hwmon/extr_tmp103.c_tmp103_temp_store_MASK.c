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
struct sensor_device_attribute {int /*<<< orphan*/  index; } ;
struct regmap {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  int ssize_t ;

/* Variables and functions */
 int EINVAL ; 
 long FUNC0 (long,int,int) ; 
 struct regmap* FUNC1 (struct device*) ; 
 scalar_t__ FUNC2 (char const*,int,long*) ; 
 int FUNC3 (struct regmap*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (long) ; 
 struct sensor_device_attribute* FUNC5 (struct device_attribute*) ; 

__attribute__((used)) static ssize_t FUNC6(struct device *dev,
				 struct device_attribute *attr,
				 const char *buf, size_t count)
{
	struct sensor_device_attribute *sda = FUNC5(attr);
	struct regmap *regmap = FUNC1(dev);
	long val;
	int ret;

	if (FUNC2(buf, 10, &val) < 0)
		return -EINVAL;

	val = FUNC0(val, -55000, 127000);
	ret = FUNC3(regmap, sda->index, FUNC4(val));
	return ret ? ret : count;
}