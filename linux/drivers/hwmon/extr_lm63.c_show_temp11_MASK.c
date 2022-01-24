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
typedef  scalar_t__ u16 ;
struct sensor_device_attribute {int index; } ;
struct lm63_data {int temp2_offset; scalar_t__* temp11; scalar_t__ remote_unsigned; scalar_t__ temp11u; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  int /*<<< orphan*/  ssize_t ;

/* Variables and functions */
 int FUNC0 (scalar_t__) ; 
 struct lm63_data* FUNC1 (struct device*) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*,int) ; 
 struct sensor_device_attribute* FUNC3 (struct device_attribute*) ; 

__attribute__((used)) static ssize_t FUNC4(struct device *dev, struct device_attribute *devattr,
			   char *buf)
{
	struct sensor_device_attribute *attr = FUNC3(devattr);
	struct lm63_data *data = FUNC1(dev);
	int nr = attr->index;
	int temp;

	if (!nr) {
		/*
		 * Use unsigned temperature unless its value is zero.
		 * If it is zero, use signed temperature.
		 */
		if (data->temp11u)
			temp = FUNC0(data->temp11u);
		else
			temp = FUNC0(data->temp11[nr]);
	} else {
		if (data->remote_unsigned && nr == 2)
			temp = FUNC0((u16)data->temp11[nr]);
		else
			temp = FUNC0(data->temp11[nr]);
	}
	return FUNC2(buf, "%d\n", temp + data->temp2_offset);
}