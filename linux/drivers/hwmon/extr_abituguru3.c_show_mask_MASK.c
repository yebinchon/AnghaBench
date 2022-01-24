#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct sensor_device_attribute_2 {size_t index; int nr; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct abituguru3_data {int** settings; TYPE_1__* sensors; } ;
typedef  int /*<<< orphan*/  ssize_t ;
struct TYPE_2__ {size_t port; } ;

/* Variables and functions */
 struct abituguru3_data* FUNC0 (struct device*) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*) ; 
 struct sensor_device_attribute_2* FUNC2 (struct device_attribute*) ; 

__attribute__((used)) static ssize_t FUNC3(struct device *dev,
	struct device_attribute *devattr, char *buf)
{
	struct sensor_device_attribute_2 *attr = FUNC2(devattr);
	struct abituguru3_data *data = FUNC0(dev);

	if (data->settings[data->sensors[attr->index].port][0] & attr->nr)
		return FUNC1(buf, "1\n");
	else
		return FUNC1(buf, "0\n");
}