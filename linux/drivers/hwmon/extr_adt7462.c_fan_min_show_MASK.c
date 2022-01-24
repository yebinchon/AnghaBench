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
typedef  int u16 ;
struct sensor_device_attribute {size_t index; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct adt7462_data {int* fan_min; } ;
typedef  int /*<<< orphan*/  ssize_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (int) ; 
 struct adt7462_data* FUNC2 (struct device*) ; 
 int /*<<< orphan*/  FUNC3 (struct adt7462_data*,size_t) ; 
 int /*<<< orphan*/  FUNC4 (char*,char*,...) ; 
 struct sensor_device_attribute* FUNC5 (struct device_attribute*) ; 

__attribute__((used)) static ssize_t FUNC6(struct device *dev,
			    struct device_attribute *devattr, char *buf)
{
	struct sensor_device_attribute *attr = FUNC5(devattr);
	struct adt7462_data *data = FUNC2(dev);
	u16 temp;

	/* Only the MSB of the min fan period is stored... */
	temp = data->fan_min[attr->index];
	temp <<= 8;

	if (!FUNC3(data, attr->index) ||
	    !FUNC0(temp))
		return FUNC4(buf, "0\n");

	return FUNC4(buf, "%d\n", FUNC1(temp));
}