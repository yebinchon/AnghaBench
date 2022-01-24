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
struct vt8231_data {int* fan_min; int* fan_div; int /*<<< orphan*/  update_lock; } ;
struct sensor_device_attribute {int index; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  int ssize_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int EINVAL ; 
 long FUNC1 (int,int /*<<< orphan*/ ) ; 
 int FUNC2 (long,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  VT8231_REG_FANDIV ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (struct device*,char*,unsigned long) ; 
 struct vt8231_data* FUNC5 (struct device*) ; 
 int FUNC6 (char const*,int,unsigned long*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 struct sensor_device_attribute* FUNC9 (struct device_attribute*) ; 
 int FUNC10 (struct vt8231_data*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct vt8231_data*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static ssize_t FUNC12(struct device *dev,
			     struct device_attribute *attr, const char *buf,
			     size_t count)
{
	struct vt8231_data *data = FUNC5(dev);
	struct sensor_device_attribute *sensor_attr = FUNC9(attr);
	unsigned long val;
	int nr = sensor_attr->index;
	int old = FUNC10(data, VT8231_REG_FANDIV);
	long min = FUNC1(data->fan_min[nr],
				 FUNC0(data->fan_div[nr]));
	int err;

	err = FUNC6(buf, 10, &val);
	if (err)
		return err;

	FUNC7(&data->update_lock);
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
		FUNC8(&data->update_lock);
		return -EINVAL;
	}

	/* Correct the fan minimum speed */
	data->fan_min[nr] = FUNC2(min, FUNC0(data->fan_div[nr]));
	FUNC11(data, FUNC3(nr), data->fan_min[nr]);

	old = (old & 0x0f) | (data->fan_div[1] << 6) | (data->fan_div[0] << 4);
	FUNC11(data, VT8231_REG_FANDIV, old);
	FUNC8(&data->update_lock);
	return count;
}