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
struct lm63_data {int temp2_offset; int /*<<< orphan*/  lut_temp_hyst; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  int /*<<< orphan*/  ssize_t ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 struct lm63_data* FUNC1 (struct device*) ; 
 int FUNC2 (struct lm63_data*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*,int) ; 
 struct sensor_device_attribute* FUNC4 (struct device_attribute*) ; 

__attribute__((used)) static ssize_t FUNC5(struct device *dev,
				  struct device_attribute *devattr, char *buf)
{
	struct sensor_device_attribute *attr = FUNC4(devattr);
	struct lm63_data *data = FUNC1(dev);

	return FUNC3(buf, "%d\n", FUNC2(data, attr->index)
		       + data->temp2_offset
		       - FUNC0(data->lut_temp_hyst));
}