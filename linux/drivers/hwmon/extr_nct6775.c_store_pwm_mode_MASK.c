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
typedef  int /*<<< orphan*/  u8 ;
struct sensor_device_attribute {int index; } ;
struct nct6775_data {scalar_t__* REG_PWM_MODE; unsigned long* pwm_mode; int /*<<< orphan*/  update_lock; int /*<<< orphan*/ * PWM_MODE_MASK; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  int ssize_t ;

/* Variables and functions */
 int EINVAL ; 
 struct nct6775_data* FUNC0 (struct device*) ; 
 int FUNC1 (char const*,int,unsigned long*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct nct6775_data*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (struct nct6775_data*,scalar_t__,int /*<<< orphan*/ ) ; 
 struct sensor_device_attribute* FUNC6 (struct device_attribute*) ; 

__attribute__((used)) static ssize_t
FUNC7(struct device *dev, struct device_attribute *attr,
	       const char *buf, size_t count)
{
	struct nct6775_data *data = FUNC0(dev);
	struct sensor_device_attribute *sattr = FUNC6(attr);
	int nr = sattr->index;
	unsigned long val;
	int err;
	u8 reg;

	err = FUNC1(buf, 10, &val);
	if (err < 0)
		return err;

	if (val > 1)
		return -EINVAL;

	/* Setting DC mode (0) is not supported for all chips/channels */
	if (data->REG_PWM_MODE[nr] == 0) {
		if (!val)
			return -EINVAL;
		return count;
	}

	FUNC2(&data->update_lock);
	data->pwm_mode[nr] = val;
	reg = FUNC4(data, data->REG_PWM_MODE[nr]);
	reg &= ~data->PWM_MODE_MASK[nr];
	if (!val)
		reg |= data->PWM_MODE_MASK[nr];
	FUNC5(data, data->REG_PWM_MODE[nr], reg);
	FUNC3(&data->update_lock);
	return count;
}