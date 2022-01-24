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
struct it87_data {int sensor; int extra; int /*<<< orphan*/  update_lock; scalar_t__ valid; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  size_t ssize_t ;

/* Variables and functions */
 size_t EINVAL ; 
 int /*<<< orphan*/  IT87_REG_TEMP_ENABLE ; 
 int /*<<< orphan*/  IT87_REG_TEMP_EXTRA ; 
 struct it87_data* FUNC0 (struct device*) ; 
 int /*<<< orphan*/  FUNC1 (struct device*,char*) ; 
 scalar_t__ FUNC2 (struct it87_data*,int) ; 
 scalar_t__ FUNC3 (struct it87_data*,int) ; 
 int FUNC4 (struct it87_data*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct it87_data*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC6 (char const*,int,long*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 struct sensor_device_attribute* FUNC9 (struct device_attribute*) ; 

__attribute__((used)) static ssize_t FUNC10(struct device *dev, struct device_attribute *attr,
			     const char *buf, size_t count)
{
	struct sensor_device_attribute *sensor_attr = FUNC9(attr);
	int nr = sensor_attr->index;

	struct it87_data *data = FUNC0(dev);
	long val;
	u8 reg, extra;

	if (FUNC6(buf, 10, &val) < 0)
		return -EINVAL;

	reg = FUNC4(data, IT87_REG_TEMP_ENABLE);
	reg &= ~(1 << nr);
	reg &= ~(8 << nr);
	if (FUNC3(data, nr) && (reg >> 6 == nr + 1 || val == 6))
		reg &= 0x3f;
	extra = FUNC4(data, IT87_REG_TEMP_EXTRA);
	if (FUNC2(data, nr) && ((extra & 0x80) || val == 6))
		extra &= 0x7f;
	if (val == 2) {	/* backwards compatibility */
		FUNC1(dev,
			 "Sensor type 2 is deprecated, please use 4 instead\n");
		val = 4;
	}
	/* 3 = thermal diode; 4 = thermistor; 6 = Intel PECI; 0 = disabled */
	if (val == 3)
		reg |= 1 << nr;
	else if (val == 4)
		reg |= 8 << nr;
	else if (FUNC3(data, nr) && val == 6)
		reg |= (nr + 1) << 6;
	else if (FUNC2(data, nr) && val == 6)
		extra |= 0x80;
	else if (val != 0)
		return -EINVAL;

	FUNC7(&data->update_lock);
	data->sensor = reg;
	data->extra = extra;
	FUNC5(data, IT87_REG_TEMP_ENABLE, data->sensor);
	if (FUNC2(data, nr))
		FUNC5(data, IT87_REG_TEMP_EXTRA, data->extra);
	data->valid = 0;	/* Force cache refresh */
	FUNC8(&data->update_lock);
	return count;
}