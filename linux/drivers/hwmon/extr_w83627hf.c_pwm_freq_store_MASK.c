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
typedef  int u8 ;
struct w83627hf_data {scalar_t__ type; int* pwm_freq; int /*<<< orphan*/  update_lock; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  int ssize_t ;
struct TYPE_2__ {int index; } ;

/* Variables and functions */
 int /*<<< orphan*/  W83627HF_REG_PWM_FREQ ; 
 int /*<<< orphan*/ * W83637HF_REG_PWM_FREQ ; 
 struct w83627hf_data* FUNC0 (struct device*) ; 
 int FUNC1 (char const*,int,unsigned long*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (unsigned long) ; 
 int FUNC5 (unsigned long) ; 
 TYPE_1__* FUNC6 (struct device_attribute*) ; 
 scalar_t__ w83627hf ; 
 int const FUNC7 (struct w83627hf_data*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct w83627hf_data*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static ssize_t
FUNC9(struct device *dev, struct device_attribute *devattr,
	       const char *buf, size_t count)
{
	int nr = FUNC6(devattr)->index;
	struct w83627hf_data *data = FUNC0(dev);
	static const u8 mask[]={0xF8, 0x8F};
	unsigned long val;
	int err;

	err = FUNC1(buf, 10, &val);
	if (err)
		return err;

	FUNC2(&data->update_lock);

	if (data->type == w83627hf) {
		data->pwm_freq[nr] = FUNC5(val);
		FUNC8(data, W83627HF_REG_PWM_FREQ,
				(data->pwm_freq[nr] << (nr*4)) |
				(FUNC7(data,
				W83627HF_REG_PWM_FREQ) & mask[nr]));
	} else {
		data->pwm_freq[nr] = FUNC4(val);
		FUNC8(data, W83637HF_REG_PWM_FREQ[nr],
				data->pwm_freq[nr]);
	}

	FUNC3(&data->update_lock);
	return count;
}