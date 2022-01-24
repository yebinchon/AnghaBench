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
struct w83795_data {int* temp_read_vrlsb; int /*<<< orphan*/ ** temp; } ;
struct sensor_device_attribute_2 {int nr; int index; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  int /*<<< orphan*/  ssize_t ;

/* Variables and functions */
 int TEMP_READ ; 
 int /*<<< orphan*/  FUNC0 (char*,char*,long) ; 
 long FUNC1 (int /*<<< orphan*/ ) ; 
 struct sensor_device_attribute_2* FUNC2 (struct device_attribute*) ; 
 struct w83795_data* FUNC3 (struct device*) ; 

__attribute__((used)) static ssize_t
FUNC4(struct device *dev, struct device_attribute *attr, char *buf)
{
	struct sensor_device_attribute_2 *sensor_attr =
	    FUNC2(attr);
	int nr = sensor_attr->nr;
	int index = sensor_attr->index;
	struct w83795_data *data = FUNC3(dev);
	long temp = FUNC1(data->temp[index][nr]);

	if (nr == TEMP_READ)
		temp += (data->temp_read_vrlsb[index] >> 6) * 250;
	return FUNC0(buf, "%ld\n", temp);
}