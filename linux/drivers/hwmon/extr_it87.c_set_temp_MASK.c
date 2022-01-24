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
struct sensor_device_attribute_2 {int nr; int index; } ;
struct it87_data {int** temp; int /*<<< orphan*/  update_lock; int /*<<< orphan*/  valid; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  size_t ssize_t ;

/* Variables and functions */
 size_t EINVAL ; 
 int IT87_REG_BEEP_ENABLE ; 
 int FUNC0 (int) ; 
 int FUNC1 (int) ; 
 int* IT87_REG_TEMP_OFFSET ; 
 int FUNC2 (long) ; 
 struct it87_data* FUNC3 (struct device*) ; 
 int FUNC4 (struct it87_data*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct it87_data*,int,int) ; 
 scalar_t__ FUNC6 (char const*,int,long*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 struct sensor_device_attribute_2* FUNC9 (struct device_attribute*) ; 

__attribute__((used)) static ssize_t FUNC10(struct device *dev, struct device_attribute *attr,
			const char *buf, size_t count)
{
	struct sensor_device_attribute_2 *sattr = FUNC9(attr);
	int nr = sattr->nr;
	int index = sattr->index;
	struct it87_data *data = FUNC3(dev);
	long val;
	u8 reg, regval;

	if (FUNC6(buf, 10, &val) < 0)
		return -EINVAL;

	FUNC7(&data->update_lock);

	switch (index) {
	default:
	case 1:
		reg = FUNC1(nr);
		break;
	case 2:
		reg = FUNC0(nr);
		break;
	case 3:
		regval = FUNC4(data, IT87_REG_BEEP_ENABLE);
		if (!(regval & 0x80)) {
			regval |= 0x80;
			FUNC5(data, IT87_REG_BEEP_ENABLE, regval);
		}
		data->valid = 0;
		reg = IT87_REG_TEMP_OFFSET[nr];
		break;
	}

	data->temp[nr][index] = FUNC2(val);
	FUNC5(data, reg, data->temp[nr][index]);
	FUNC8(&data->update_lock);
	return count;
}