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
struct w83l786ng_data {unsigned long* pwm_enable; int /*<<< orphan*/  update_lock; struct i2c_client* client; } ;
struct i2c_client {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  int ssize_t ;
struct TYPE_2__ {int index; } ;

/* Variables and functions */
 int EINVAL ; 
 int* W83L786NG_PWM_ENABLE_SHIFT ; 
 int /*<<< orphan*/  W83L786NG_REG_FAN_CFG ; 
 struct w83l786ng_data* FUNC0 (struct device*) ; 
 int FUNC1 (char const*,int,unsigned long*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC4 (struct device_attribute*) ; 
 int FUNC5 (struct i2c_client*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct i2c_client*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static ssize_t
FUNC7(struct device *dev, struct device_attribute *attr,
		 const char *buf, size_t count)
{
	int nr = FUNC4(attr)->index;
	struct w83l786ng_data *data = FUNC0(dev);
	struct i2c_client *client = data->client;
	u8 reg;
	unsigned long val;
	int err;

	err = FUNC1(buf, 10, &val);
	if (err)
		return err;

	if (!val || val > 2)  /* only modes 1 and 2 are supported */
		return -EINVAL;

	FUNC2(&data->update_lock);
	reg = FUNC5(client, W83L786NG_REG_FAN_CFG);
	data->pwm_enable[nr] = val;
	reg &= ~(0x03 << W83L786NG_PWM_ENABLE_SHIFT[nr]);
	reg |= (val - 1) << W83L786NG_PWM_ENABLE_SHIFT[nr];
	FUNC6(client, W83L786NG_REG_FAN_CFG, reg);
	FUNC3(&data->update_lock);
	return count;
}