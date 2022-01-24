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
struct i2c_client {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct TYPE_2__ {int enable; int /*<<< orphan*/  pwm; } ;
struct adm1026_data {int /*<<< orphan*/  update_lock; TYPE_1__ pwm1; struct i2c_client* client; } ;
typedef  int ssize_t ;

/* Variables and functions */
 int /*<<< orphan*/  ADM1026_REG_PWM ; 
 int /*<<< orphan*/  FUNC0 (long) ; 
 int /*<<< orphan*/  FUNC1 (struct i2c_client*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct adm1026_data* FUNC2 (struct device*) ; 
 int FUNC3 (char const*,int,long*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static ssize_t FUNC6(struct device *dev, struct device_attribute *attr,
			  const char *buf, size_t count)
{
	struct adm1026_data *data = FUNC2(dev);
	struct i2c_client *client = data->client;

	if (data->pwm1.enable == 1) {
		long val;
		int err;

		err = FUNC3(buf, 10, &val);
		if (err)
			return err;

		FUNC4(&data->update_lock);
		data->pwm1.pwm = FUNC0(val);
		FUNC1(client, ADM1026_REG_PWM, data->pwm1.pwm);
		FUNC5(&data->update_lock);
	}
	return count;
}