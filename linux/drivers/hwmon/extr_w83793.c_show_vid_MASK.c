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
struct w83793_data {int /*<<< orphan*/  vrm; int /*<<< orphan*/ * vid; } ;
struct sensor_device_attribute_2 {int index; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  int /*<<< orphan*/  ssize_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,char*,int) ; 
 struct sensor_device_attribute_2* FUNC1 (struct device_attribute*) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct w83793_data* FUNC3 (struct device*) ; 

__attribute__((used)) static ssize_t
FUNC4(struct device *dev, struct device_attribute *attr, char *buf)
{
	struct w83793_data *data = FUNC3(dev);
	struct sensor_device_attribute_2 *sensor_attr =
	    FUNC1(attr);
	int index = sensor_attr->index;

	return FUNC0(buf, "%d\n", FUNC2(data->vid[index], data->vrm));
}