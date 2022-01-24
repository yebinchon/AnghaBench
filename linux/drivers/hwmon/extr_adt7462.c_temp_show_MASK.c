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
typedef  int u8 ;
struct sensor_device_attribute {size_t index; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct adt7462_data {int* temp_frac; int* temp; } ;
typedef  int /*<<< orphan*/  ssize_t ;

/* Variables and functions */
 int TEMP_FRAC_OFFSET ; 
 struct adt7462_data* FUNC0 (struct device*) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*,...) ; 
 int /*<<< orphan*/  FUNC2 (struct adt7462_data*,size_t) ; 
 struct sensor_device_attribute* FUNC3 (struct device_attribute*) ; 

__attribute__((used)) static ssize_t FUNC4(struct device *dev, struct device_attribute *devattr,
			 char *buf)
{
	struct sensor_device_attribute *attr = FUNC3(devattr);
	struct adt7462_data *data = FUNC0(dev);
	u8 frac = data->temp_frac[attr->index] >> TEMP_FRAC_OFFSET;

	if (!FUNC2(data, attr->index))
		return FUNC1(buf, "0\n");

	return FUNC1(buf, "%d\n", 1000 * (data->temp[attr->index] - 64) +
				     250 * frac);
}