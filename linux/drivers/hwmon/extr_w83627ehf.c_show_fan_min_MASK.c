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
struct w83627ehf_data {int (* fan_from_reg_min ) (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ;int /*<<< orphan*/ * fan_div; int /*<<< orphan*/ * fan_min; } ;
struct sensor_device_attribute {int index; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  int /*<<< orphan*/  ssize_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,char*,int) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct sensor_device_attribute* FUNC3 (struct device_attribute*) ; 
 struct w83627ehf_data* FUNC4 (struct device*) ; 

__attribute__((used)) static ssize_t
FUNC5(struct device *dev, struct device_attribute *attr, char *buf)
{
	struct w83627ehf_data *data = FUNC4(dev);
	struct sensor_device_attribute *sensor_attr = FUNC3(attr);
	int nr = sensor_attr->index;
	return FUNC0(buf, "%d\n",
		       data->fan_from_reg_min(data->fan_min[nr],
					      data->fan_div[nr]));
}