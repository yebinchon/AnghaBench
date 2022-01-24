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
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct adt7462_data {int /*<<< orphan*/ * fan; } ;
typedef  int /*<<< orphan*/  ssize_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 struct adt7462_data* FUNC2 (struct device*) ; 
 int /*<<< orphan*/  FUNC3 (struct adt7462_data*,size_t) ; 
 int /*<<< orphan*/  FUNC4 (char*,char*,...) ; 
 struct sensor_device_attribute* FUNC5 (struct device_attribute*) ; 

__attribute__((used)) static ssize_t FUNC6(struct device *dev, struct device_attribute *devattr,
			char *buf)
{
	struct sensor_device_attribute *attr = FUNC5(devattr);
	struct adt7462_data *data = FUNC2(dev);

	if (!FUNC3(data, attr->index) ||
	    !FUNC0(data->fan[attr->index]))
		return FUNC4(buf, "0\n");

	return FUNC4(buf, "%d\n",
		       FUNC1(data->fan[attr->index]));
}