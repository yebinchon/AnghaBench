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
struct i5k_amb_data {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  int /*<<< orphan*/  ssize_t ;

/* Variables and functions */
 int FUNC0 (struct i5k_amb_data*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 struct i5k_amb_data* FUNC2 (struct device*) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*) ; 
 struct sensor_device_attribute* FUNC4 (struct device_attribute*) ; 

__attribute__((used)) static ssize_t FUNC5(struct device *dev,
			     struct device_attribute *devattr,
			     char *buf)
{
	struct sensor_device_attribute *attr = FUNC4(devattr);
	struct i5k_amb_data *data = FUNC2(dev);

	if (!(FUNC0(data, FUNC1(attr->index)) & 0x20) &&
	     (FUNC0(data, FUNC1(attr->index)) & 0x8))
		return FUNC3(buf, "1\n");
	else
		return FUNC3(buf, "0\n");
}