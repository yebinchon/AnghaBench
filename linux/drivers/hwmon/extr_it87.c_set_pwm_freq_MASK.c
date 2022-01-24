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
struct it87_data {int fan_ctl; int extra; int /*<<< orphan*/  update_lock; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  size_t ssize_t ;

/* Variables and functions */
 size_t EINVAL ; 
 int /*<<< orphan*/  IT87_REG_FAN_CTL ; 
 int /*<<< orphan*/  IT87_REG_TEMP_EXTRA ; 
 unsigned long FUNC0 (unsigned long,int /*<<< orphan*/ ,int) ; 
 struct it87_data* FUNC1 (struct device*) ; 
 scalar_t__ FUNC2 (struct it87_data*) ; 
 int FUNC3 (struct it87_data*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct it87_data*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC5 (char const*,int,unsigned long*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int* pwm_freq ; 
 struct sensor_device_attribute* FUNC8 (struct device_attribute*) ; 

__attribute__((used)) static ssize_t FUNC9(struct device *dev, struct device_attribute *attr,
			    const char *buf, size_t count)
{
	struct sensor_device_attribute *sensor_attr = FUNC8(attr);
	struct it87_data *data = FUNC1(dev);
	int nr = sensor_attr->index;
	unsigned long val;
	int i;

	if (FUNC5(buf, 10, &val) < 0)
		return -EINVAL;

	val = FUNC0(val, 0, 1000000);
	val *= FUNC2(data) ? 256 : 128;

	/* Search for the nearest available frequency */
	for (i = 0; i < 7; i++) {
		if (val > (pwm_freq[i] + pwm_freq[i + 1]) / 2)
			break;
	}

	FUNC6(&data->update_lock);
	if (nr == 0) {
		data->fan_ctl = FUNC3(data, IT87_REG_FAN_CTL) & 0x8f;
		data->fan_ctl |= i << 4;
		FUNC4(data, IT87_REG_FAN_CTL, data->fan_ctl);
	} else {
		data->extra = FUNC3(data, IT87_REG_TEMP_EXTRA) & 0x8f;
		data->extra |= i << 4;
		FUNC4(data, IT87_REG_TEMP_EXTRA, data->extra);
	}
	FUNC7(&data->update_lock);

	return count;
}