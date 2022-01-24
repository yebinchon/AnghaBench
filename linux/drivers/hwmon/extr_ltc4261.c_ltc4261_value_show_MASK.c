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
struct ltc4261_data {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  int /*<<< orphan*/  ssize_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct ltc4261_data*) ; 
 int /*<<< orphan*/  PAGE_SIZE ; 
 int /*<<< orphan*/  FUNC1 (struct ltc4261_data*) ; 
 int FUNC2 (struct ltc4261_data*,int /*<<< orphan*/ ) ; 
 struct ltc4261_data* FUNC3 (struct device*) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ,char*,int) ; 
 struct sensor_device_attribute* FUNC5 (struct device_attribute*) ; 

__attribute__((used)) static ssize_t FUNC6(struct device *dev,
				  struct device_attribute *da, char *buf)
{
	struct sensor_device_attribute *attr = FUNC5(da);
	struct ltc4261_data *data = FUNC3(dev);
	int value;

	if (FUNC0(data))
		return FUNC1(data);

	value = FUNC2(data, attr->index);
	return FUNC4(buf, PAGE_SIZE, "%d\n", value);
}