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
struct nct6775_data {unsigned long* fan_pulses; int* FAN_PULSE_SHIFT; int /*<<< orphan*/  update_lock; int /*<<< orphan*/ * REG_FAN_PULSES; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  int ssize_t ;

/* Variables and functions */
 int EINVAL ; 
 struct nct6775_data* FUNC0 (struct device*) ; 
 int FUNC1 (char const*,int,unsigned long*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (struct nct6775_data*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct nct6775_data*,int /*<<< orphan*/ ,int) ; 
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

	if (val > 4)
		return -EINVAL;

	FUNC2(&data->update_lock);
	data->fan_pulses[nr] = val & 3;
	reg = FUNC4(data, data->REG_FAN_PULSES[nr]);
	reg &= ~(0x03 << data->FAN_PULSE_SHIFT[nr]);
	reg |= (val & 3) << data->FAN_PULSE_SHIFT[nr];
	FUNC5(data, data->REG_FAN_PULSES[nr], reg);
	FUNC3(&data->update_lock);

	return count;
}