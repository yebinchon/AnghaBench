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
struct adm1031_data {int conf1; int* pwm; int /*<<< orphan*/  update_lock; struct i2c_client* client; } ;
typedef  int ssize_t ;
struct TYPE_2__ {int index; } ;

/* Variables and functions */
 int ADM1031_CONF1_AUTO_MODE ; 
 int /*<<< orphan*/  ADM1031_REG_PWM ; 
 int EINVAL ; 
 int FUNC0 (long) ; 
 int FUNC1 (struct i2c_client*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct i2c_client*,int /*<<< orphan*/ ,int) ; 
 struct adm1031_data* FUNC3 (struct device*) ; 
 int FUNC4 (char const*,int,long*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC7 (struct device_attribute*) ; 

__attribute__((used)) static ssize_t FUNC8(struct device *dev, struct device_attribute *attr,
			 const char *buf, size_t count)
{
	struct adm1031_data *data = FUNC3(dev);
	struct i2c_client *client = data->client;
	int nr = FUNC7(attr)->index;
	long val;
	int ret, reg;

	ret = FUNC4(buf, 10, &val);
	if (ret)
		return ret;

	FUNC5(&data->update_lock);
	if ((data->conf1 & ADM1031_CONF1_AUTO_MODE) &&
	    (((val>>4) & 0xf) != 5)) {
		/* In automatic mode, the only PWM accepted is 33% */
		FUNC6(&data->update_lock);
		return -EINVAL;
	}
	data->pwm[nr] = FUNC0(val);
	reg = FUNC1(client, ADM1031_REG_PWM);
	FUNC2(client, ADM1031_REG_PWM,
			    nr ? ((data->pwm[nr] << 4) & 0xf0) | (reg & 0xf)
			    : (data->pwm[nr] & 0xf) | (reg & 0xf0));
	FUNC6(&data->update_lock);
	return count;
}