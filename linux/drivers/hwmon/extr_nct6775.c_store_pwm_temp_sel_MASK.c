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
struct nct6775_data {int have_temp; int* temp_src; int* pwm_temp_sel; int /*<<< orphan*/  update_lock; int /*<<< orphan*/ * REG_TEMP_SEL; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  int ssize_t ;

/* Variables and functions */
 int FUNC0 (unsigned long) ; 
 int EINVAL ; 
 unsigned long NUM_TEMP ; 
 int FUNC1 (char const*,int,unsigned long*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (struct nct6775_data*,int /*<<< orphan*/ ) ; 
 struct nct6775_data* FUNC5 (struct device*) ; 
 int /*<<< orphan*/  FUNC6 (struct nct6775_data*,int /*<<< orphan*/ ,int) ; 
 struct sensor_device_attribute* FUNC7 (struct device_attribute*) ; 

__attribute__((used)) static ssize_t
FUNC8(struct device *dev, struct device_attribute *attr,
		   const char *buf, size_t count)
{
	struct nct6775_data *data = FUNC5(dev);
	struct sensor_device_attribute *sattr = FUNC7(attr);
	int nr = sattr->index;
	unsigned long val;
	int err, reg, src;

	err = FUNC1(buf, 10, &val);
	if (err < 0)
		return err;
	if (val == 0 || val > NUM_TEMP)
		return -EINVAL;
	if (!(data->have_temp & FUNC0(val - 1)) || !data->temp_src[val - 1])
		return -EINVAL;

	FUNC2(&data->update_lock);
	src = data->temp_src[val - 1];
	data->pwm_temp_sel[nr] = src;
	reg = FUNC4(data, data->REG_TEMP_SEL[nr]);
	reg &= 0xe0;
	reg |= src;
	FUNC6(data, data->REG_TEMP_SEL[nr], reg);
	FUNC3(&data->update_lock);

	return count;
}