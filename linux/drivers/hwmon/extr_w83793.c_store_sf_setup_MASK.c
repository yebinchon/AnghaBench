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
struct w83793_data {int pwm_default; int pwm_uptime; int pwm_downtime; int temp_critical; int /*<<< orphan*/  update_lock; } ;
struct sensor_device_attribute_2 {int nr; } ;
struct i2c_client {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  int ssize_t ;

/* Variables and functions */
 int SETUP_PWM_DEFAULT ; 
 int SETUP_PWM_DOWNTIME ; 
 int SETUP_PWM_UPTIME ; 
 int FUNC0 (long,int /*<<< orphan*/ ,int) ; 
 void* FUNC1 (long) ; 
 int /*<<< orphan*/  W83793_REG_PWM_DEFAULT ; 
 int /*<<< orphan*/  W83793_REG_PWM_DOWNTIME ; 
 int /*<<< orphan*/  W83793_REG_PWM_UPTIME ; 
 int /*<<< orphan*/  W83793_REG_TEMP_CRITICAL ; 
 int FUNC2 (long,int /*<<< orphan*/ ,int) ; 
 struct w83793_data* FUNC3 (struct i2c_client*) ; 
 int FUNC4 (char const*,int,long*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 struct i2c_client* FUNC7 (struct device*) ; 
 struct sensor_device_attribute_2* FUNC8 (struct device_attribute*) ; 
 int FUNC9 (struct i2c_client*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct i2c_client*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static ssize_t
FUNC11(struct device *dev, struct device_attribute *attr,
	       const char *buf, size_t count)
{
	struct sensor_device_attribute_2 *sensor_attr =
	    FUNC8(attr);
	int nr = sensor_attr->nr;
	struct i2c_client *client = FUNC7(dev);
	struct w83793_data *data = FUNC3(client);
	long val;
	int err;

	err = FUNC4(buf, 10, &val);
	if (err)
		return err;

	FUNC5(&data->update_lock);
	if (nr == SETUP_PWM_DEFAULT) {
		data->pwm_default =
		    FUNC9(client, W83793_REG_PWM_DEFAULT) & 0xc0;
		data->pwm_default |= FUNC2(val, 0, 0xff) >> 2;
		FUNC10(client, W83793_REG_PWM_DEFAULT,
							data->pwm_default);
	} else if (nr == SETUP_PWM_UPTIME) {
		data->pwm_uptime = FUNC1(val);
		data->pwm_uptime += data->pwm_uptime == 0 ? 1 : 0;
		FUNC10(client, W83793_REG_PWM_UPTIME,
							data->pwm_uptime);
	} else if (nr == SETUP_PWM_DOWNTIME) {
		data->pwm_downtime = FUNC1(val);
		data->pwm_downtime += data->pwm_downtime == 0 ? 1 : 0;
		FUNC10(client, W83793_REG_PWM_DOWNTIME,
							data->pwm_downtime);
	} else {		/* SETUP_TEMP_CRITICAL */
		data->temp_critical =
		    FUNC9(client, W83793_REG_TEMP_CRITICAL) & 0x80;
		data->temp_critical |= FUNC0(val, 0, 0x7f);
		FUNC10(client, W83793_REG_TEMP_CRITICAL,
							data->temp_critical);
	}

	FUNC6(&data->update_lock);
	return count;
}