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
struct ina2xx_data {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  int ssize_t ;

/* Variables and functions */
 int /*<<< orphan*/  PAGE_SIZE ; 
 struct ina2xx_data* FUNC0 (struct device*) ; 
 int FUNC1 (struct ina2xx_data*,int /*<<< orphan*/ ,unsigned int) ; 
 int FUNC2 (struct device*,int /*<<< orphan*/ ,unsigned int*) ; 
 int FUNC3 (char*,int /*<<< orphan*/ ,char*,int) ; 
 struct sensor_device_attribute* FUNC4 (struct device_attribute*) ; 

__attribute__((used)) static ssize_t FUNC5(struct device *dev,
				 struct device_attribute *da, char *buf)
{
	struct sensor_device_attribute *attr = FUNC4(da);
	struct ina2xx_data *data = FUNC0(dev);
	unsigned int regval;

	int err = FUNC2(dev, attr->index, &regval);

	if (err < 0)
		return err;

	return FUNC3(buf, PAGE_SIZE, "%d\n",
			FUNC1(data, attr->index, regval));
}