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
struct f71882fg_data {int pwm_enable; scalar_t__ type; long* pwm; int* fan_target; int* fan_full_speed; int /*<<< orphan*/  update_lock; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  int ssize_t ;
struct TYPE_2__ {int index; } ;

/* Variables and functions */
 size_t EROFS ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  F71882FG_REG_PWM_ENABLE ; 
 long FUNC3 (long,int /*<<< orphan*/ ,int) ; 
 struct f71882fg_data* FUNC4 (struct device*) ; 
 int FUNC5 (struct f71882fg_data*,int /*<<< orphan*/ ) ; 
 int FUNC6 (struct f71882fg_data*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct f71882fg_data*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 (struct f71882fg_data*,int /*<<< orphan*/ ,long) ; 
 scalar_t__ f8000 ; 
 long FUNC9 (int) ; 
 int FUNC10 (long) ; 
 int FUNC11 (char const*,int,long*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC14 (struct device_attribute*) ; 

__attribute__((used)) static ssize_t FUNC15(struct device *dev,
			 struct device_attribute *devattr, const char *buf,
			 size_t count)
{
	struct f71882fg_data *data = FUNC4(dev);
	int err, nr = FUNC14(devattr)->index;
	long val;

	err = FUNC11(buf, 10, &val);
	if (err)
		return err;

	val = FUNC3(val, 0, 255);

	FUNC12(&data->update_lock);
	data->pwm_enable = FUNC6(data, F71882FG_REG_PWM_ENABLE);
	if ((data->type == f8000 && ((data->pwm_enable >> 2 * nr) & 3) != 2) ||
	    (data->type != f8000 && !((data->pwm_enable >> 2 * nr) & 2))) {
		count = -EROFS;
		goto leave;
	}
	if (data->pwm_enable & (1 << (2 * nr))) {
		/* PWM mode */
		FUNC8(data, FUNC2(nr), val);
		data->pwm[nr] = val;
	} else {
		/* RPM mode */
		int target, full_speed;
		full_speed = FUNC5(data,
					     FUNC0(nr));
		target = FUNC10(val * FUNC9(full_speed) / 255);
		FUNC7(data, FUNC1(nr), target);
		data->fan_target[nr] = target;
		data->fan_full_speed[nr] = full_speed;
	}
leave:
	FUNC13(&data->update_lock);

	return count;
}