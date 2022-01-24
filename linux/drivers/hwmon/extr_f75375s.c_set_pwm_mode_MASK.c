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
struct i2c_client {int dummy; } ;
struct f75375_data {scalar_t__ kind; unsigned long* pwm_mode; int /*<<< orphan*/  update_lock; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  int ssize_t ;
struct TYPE_2__ {int index; } ;

/* Variables and functions */
 int EINVAL ; 
 char FUNC0 (int) ; 
 char F75375_REG_CONFIG1 ; 
 char F75375_REG_FAN_TIMER ; 
 char FUNC1 (int) ; 
 scalar_t__ f75373 ; 
 int FUNC2 (struct i2c_client*,char) ; 
 int /*<<< orphan*/  FUNC3 (struct i2c_client*,char,int) ; 
 scalar_t__ f75387 ; 
 struct f75375_data* FUNC4 (struct i2c_client*) ; 
 int FUNC5 (char const*,int,unsigned long*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 struct i2c_client* FUNC8 (struct device*) ; 
 TYPE_1__* FUNC9 (struct device_attribute*) ; 

__attribute__((used)) static ssize_t FUNC10(struct device *dev, struct device_attribute *attr,
		const char *buf, size_t count)
{
	int nr = FUNC9(attr)->index;
	struct i2c_client *client = FUNC8(dev);
	struct f75375_data *data = FUNC4(client);
	unsigned long val;
	int err;
	u8 conf;
	char reg, ctrl;

	err = FUNC5(buf, 10, &val);
	if (err < 0)
		return err;

	if (!(val == 0 || val == 1))
		return -EINVAL;

	/* F75373 does not support DC (linear voltage) fan control mode */
	if (data->kind == f75373 && val == 0)
		return -EINVAL;

	/* take care for different registers */
	if (data->kind == f75387) {
		reg = F75375_REG_FAN_TIMER;
		ctrl = FUNC1(nr);
	} else {
		reg = F75375_REG_CONFIG1;
		ctrl = FUNC0(nr);
	}

	FUNC6(&data->update_lock);
	conf = FUNC2(client, reg);
	conf &= ~(1 << ctrl);

	if (val == 0)
		conf |= (1 << ctrl);

	FUNC3(client, reg, conf);
	data->pwm_mode[nr] = val;
	FUNC7(&data->update_lock);
	return count;
}