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
struct it87_data {int** fan; int* fan_div; int /*<<< orphan*/  update_lock; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  size_t ssize_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 size_t EINVAL ; 
 int FUNC1 (long) ; 
 int FUNC2 (long,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * IT87_REG_FANX_MIN ; 
 int /*<<< orphan*/  IT87_REG_FAN_DIV ; 
 int /*<<< orphan*/ * IT87_REG_FAN_MIN ; 
 struct it87_data* FUNC3 (struct device*) ; 
 scalar_t__ FUNC4 (struct it87_data*) ; 
 int FUNC5 (struct it87_data*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct it87_data*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC7 (char const*,int,long*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 struct sensor_device_attribute_2* FUNC10 (struct device_attribute*) ; 

__attribute__((used)) static ssize_t FUNC11(struct device *dev, struct device_attribute *attr,
		       const char *buf, size_t count)
{
	struct sensor_device_attribute_2 *sattr = FUNC10(attr);
	int nr = sattr->nr;
	int index = sattr->index;

	struct it87_data *data = FUNC3(dev);
	long val;
	u8 reg;

	if (FUNC7(buf, 10, &val) < 0)
		return -EINVAL;

	FUNC8(&data->update_lock);

	if (FUNC4(data)) {
		data->fan[nr][index] = FUNC1(val);
		FUNC6(data, IT87_REG_FAN_MIN[nr],
				 data->fan[nr][index] & 0xff);
		FUNC6(data, IT87_REG_FANX_MIN[nr],
				 data->fan[nr][index] >> 8);
	} else {
		reg = FUNC5(data, IT87_REG_FAN_DIV);
		switch (nr) {
		case 0:
			data->fan_div[nr] = reg & 0x07;
			break;
		case 1:
			data->fan_div[nr] = (reg >> 3) & 0x07;
			break;
		case 2:
			data->fan_div[nr] = (reg & 0x40) ? 3 : 1;
			break;
		}
		data->fan[nr][index] =
		  FUNC2(val, FUNC0(data->fan_div[nr]));
		FUNC6(data, IT87_REG_FAN_MIN[nr],
				 data->fan[nr][index]);
	}

	FUNC9(&data->update_lock);
	return count;
}