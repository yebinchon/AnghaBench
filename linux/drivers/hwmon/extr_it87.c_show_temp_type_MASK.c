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
struct sensor_device_attribute {int index; } ;
struct it87_data {int sensor; int extra; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  int /*<<< orphan*/  ssize_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct it87_data*,int) ; 
 scalar_t__ FUNC1 (struct it87_data*,int) ; 
 struct it87_data* FUNC2 (struct device*) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*) ; 
 struct sensor_device_attribute* FUNC4 (struct device_attribute*) ; 

__attribute__((used)) static ssize_t FUNC5(struct device *dev, struct device_attribute *attr,
			      char *buf)
{
	struct sensor_device_attribute *sensor_attr = FUNC4(attr);
	int nr = sensor_attr->index;
	struct it87_data *data = FUNC2(dev);
	u8 reg = data->sensor;	    /* In case value is updated while used */
	u8 extra = data->extra;

	if ((FUNC1(data, nr) && (reg >> 6 == nr + 1)) ||
	    (FUNC0(data, nr) && (extra & 0x80)))
		return FUNC3(buf, "6\n");  /* Intel PECI */
	if (reg & (1 << nr))
		return FUNC3(buf, "3\n");  /* thermal diode */
	if (reg & (8 << nr))
		return FUNC3(buf, "4\n");  /* thermistor */
	return FUNC3(buf, "0\n");      /* disabled */
}