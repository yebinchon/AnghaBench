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
struct sensor_device_attribute {size_t index; } ;
struct max6639_data {int /*<<< orphan*/  rpm_range; int /*<<< orphan*/ * fan; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  int /*<<< orphan*/  ssize_t ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (struct max6639_data*) ; 
 int /*<<< orphan*/  FUNC2 (struct max6639_data*) ; 
 struct max6639_data* FUNC3 (struct device*) ; 
 int /*<<< orphan*/  FUNC4 (char*,char*,int) ; 
 struct sensor_device_attribute* FUNC5 (struct device_attribute*) ; 

__attribute__((used)) static ssize_t FUNC6(struct device *dev,
			      struct device_attribute *dev_attr, char *buf)
{
	struct max6639_data *data = FUNC3(dev);
	struct sensor_device_attribute *attr = FUNC5(dev_attr);

	if (FUNC1(data))
		return FUNC2(data);

	return FUNC4(buf, "%d\n", FUNC0(data->fan[attr->index],
		       data->rpm_range));
}