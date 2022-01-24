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
struct w83795_data {int /*<<< orphan*/ * dts_ext; } ;
struct sensor_device_attribute_2 {int nr; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  int /*<<< orphan*/  ssize_t ;

/* Variables and functions */
 struct w83795_data* FUNC0 (struct device*) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*,long) ; 
 long FUNC2 (int /*<<< orphan*/ ) ; 
 struct sensor_device_attribute_2* FUNC3 (struct device_attribute*) ; 

__attribute__((used)) static ssize_t
FUNC4(struct device *dev, struct device_attribute *attr, char *buf)
{
	struct sensor_device_attribute_2 *sensor_attr =
	    FUNC3(attr);
	int nr = sensor_attr->nr;
	struct w83795_data *data = FUNC0(dev);
	long temp = FUNC2(data->dts_ext[nr]);

	return FUNC1(buf, "%ld\n", temp);
}