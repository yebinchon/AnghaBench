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
struct sensor_device_attribute {int index; } ;
struct nct6775_data {int have_temp; int* temp_src; int* pwm_weight_temp_sel; int /*<<< orphan*/  update_lock; int /*<<< orphan*/ * REG_WEIGHT_TEMP_SEL; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  int ssize_t ;

/* Variables and functions */
 int FUNC0 (unsigned long) ; 
 int EINVAL ; 
 unsigned long NUM_TEMP ; 
 unsigned long FUNC1 (unsigned long,unsigned long) ; 
 int FUNC2 (char const*,int,unsigned long*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int FUNC5 (struct nct6775_data*,int /*<<< orphan*/ ) ; 
 struct nct6775_data* FUNC6 (struct device*) ; 
 int /*<<< orphan*/  FUNC7 (struct nct6775_data*,int /*<<< orphan*/ ,int) ; 
 struct sensor_device_attribute* FUNC8 (struct device_attribute*) ; 

__attribute__((used)) static ssize_t
FUNC9(struct device *dev, struct device_attribute *attr,
			  const char *buf, size_t count)
{
	struct nct6775_data *data = FUNC6(dev);
	struct sensor_device_attribute *sattr = FUNC8(attr);
	int nr = sattr->index;
	unsigned long val;
	int err, reg, src;

	err = FUNC2(buf, 10, &val);
	if (err < 0)
		return err;
	if (val > NUM_TEMP)
		return -EINVAL;
	val = FUNC1(val, NUM_TEMP + 1);
	if (val && (!(data->have_temp & FUNC0(val - 1)) ||
		    !data->temp_src[val - 1]))
		return -EINVAL;

	FUNC3(&data->update_lock);
	if (val) {
		src = data->temp_src[val - 1];
		data->pwm_weight_temp_sel[nr] = src;
		reg = FUNC5(data, data->REG_WEIGHT_TEMP_SEL[nr]);
		reg &= 0xe0;
		reg |= (src | 0x80);
		FUNC7(data, data->REG_WEIGHT_TEMP_SEL[nr], reg);
	} else {
		data->pwm_weight_temp_sel[nr] = 0;
		reg = FUNC5(data, data->REG_WEIGHT_TEMP_SEL[nr]);
		reg &= 0x7f;
		FUNC7(data, data->REG_WEIGHT_TEMP_SEL[nr], reg);
	}
	FUNC4(&data->update_lock);

	return count;
}