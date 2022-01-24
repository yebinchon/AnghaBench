#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct f71882fg_data {scalar_t__ type; int pwm_enable; int /*<<< orphan*/  update_lock; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  int ssize_t ;
struct TYPE_2__ {int index; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  F71882FG_REG_PWM_ENABLE ; 
 struct f71882fg_data* FUNC0 (struct device*) ; 
 scalar_t__ f71858fg ; 
 int FUNC1 (struct f71882fg_data*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct f71882fg_data*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ f8000 ; 
 int FUNC3 (char const*,int,long*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC6 (struct device_attribute*) ; 

__attribute__((used)) static ssize_t FUNC7(struct device *dev, struct device_attribute
				*devattr, const char *buf, size_t count)
{
	struct f71882fg_data *data = FUNC0(dev);
	int err, nr = FUNC6(devattr)->index;
	long val;

	err = FUNC3(buf, 10, &val);
	if (err)
		return err;

	/* Special case for F8000 pwm channel 3 which only does auto mode */
	if (data->type == f8000 && nr == 2 && val != 2)
		return -EINVAL;

	FUNC4(&data->update_lock);
	data->pwm_enable = FUNC1(data, F71882FG_REG_PWM_ENABLE);
	/* Special case for F8000 auto PWM mode / Thermostat mode */
	if (data->type == f8000 && ((data->pwm_enable >> 2 * nr) & 1)) {
		switch (val) {
		case 2:
			data->pwm_enable &= ~(2 << (2 * nr));
			break;		/* Normal auto mode */
		case 3:
			data->pwm_enable |= 2 << (2 * nr);
			break;		/* Thermostat mode */
		default:
			count = -EINVAL;
			goto leave;
		}
	} else {
		switch (val) {
		case 1:
			/* The f71858fg does not support manual RPM mode */
			if (data->type == f71858fg &&
			    ((data->pwm_enable >> (2 * nr)) & 1)) {
				count = -EINVAL;
				goto leave;
			}
			data->pwm_enable |= 2 << (2 * nr);
			break;		/* Manual */
		case 2:
			data->pwm_enable &= ~(2 << (2 * nr));
			break;		/* Normal auto mode */
		default:
			count = -EINVAL;
			goto leave;
		}
	}
	FUNC2(data, F71882FG_REG_PWM_ENABLE, data->pwm_enable);
leave:
	FUNC5(&data->update_lock);

	return count;
}