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
struct lm78_data {int* fan_min; int* fan_div; int /*<<< orphan*/  update_lock; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  int ssize_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int EINVAL ; 
 unsigned long FUNC1 (int,int /*<<< orphan*/ ) ; 
 int FUNC2 (unsigned long,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  LM78_REG_VID_FANDIV ; 
 int /*<<< orphan*/  FUNC4 (struct device*,char*,unsigned long) ; 
 struct lm78_data* FUNC5 (struct device*) ; 
 int FUNC6 (char const*,int,unsigned long*) ; 
 int FUNC7 (struct lm78_data*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct lm78_data*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 struct sensor_device_attribute* FUNC11 (struct device_attribute*) ; 

__attribute__((used)) static ssize_t FUNC12(struct device *dev, struct device_attribute *da,
			     const char *buf, size_t count)
{
	struct sensor_device_attribute *attr = FUNC11(da);
	struct lm78_data *data = FUNC5(dev);
	int nr = attr->index;
	unsigned long min;
	u8 reg;
	unsigned long val;
	int err;

	err = FUNC6(buf, 10, &val);
	if (err)
		return err;

	FUNC9(&data->update_lock);
	min = FUNC1(data->fan_min[nr],
			   FUNC0(data->fan_div[nr]));

	switch (val) {
	case 1:
		data->fan_div[nr] = 0;
		break;
	case 2:
		data->fan_div[nr] = 1;
		break;
	case 4:
		data->fan_div[nr] = 2;
		break;
	case 8:
		data->fan_div[nr] = 3;
		break;
	default:
		FUNC4(dev,
			"fan_div value %ld not supported. Choose one of 1, 2, 4 or 8!\n",
			val);
		FUNC10(&data->update_lock);
		return -EINVAL;
	}

	reg = FUNC7(data, LM78_REG_VID_FANDIV);
	switch (nr) {
	case 0:
		reg = (reg & 0xcf) | (data->fan_div[nr] << 4);
		break;
	case 1:
		reg = (reg & 0x3f) | (data->fan_div[nr] << 6);
		break;
	}
	FUNC8(data, LM78_REG_VID_FANDIV, reg);

	data->fan_min[nr] =
		FUNC2(min, FUNC0(data->fan_div[nr]));
	FUNC8(data, FUNC3(nr), data->fan_min[nr]);
	FUNC10(&data->update_lock);

	return count;
}