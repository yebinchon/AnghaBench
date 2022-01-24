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
struct lm93_data {int /*<<< orphan*/  update_lock; struct i2c_client* client; } ;
struct i2c_client {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  int ssize_t ;
struct TYPE_2__ {int index; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  LM93_PWM_CTL2 ; 
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ) ; 
 struct lm93_data* FUNC1 (struct device*) ; 
 int FUNC2 (char const*,int,unsigned long*) ; 
 int FUNC3 (struct i2c_client*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct i2c_client*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC7 (struct device_attribute*) ; 

__attribute__((used)) static ssize_t FUNC8(struct device *dev,
				struct device_attribute *attr,
				const char *buf, size_t count)
{
	int nr = (FUNC7(attr))->index;
	struct lm93_data *data = FUNC1(dev);
	struct i2c_client *client = data->client;
	u8 ctl2;
	unsigned long val;
	int err;

	err = FUNC2(buf, 10, &val);
	if (err)
		return err;

	FUNC5(&data->update_lock);
	ctl2 = FUNC3(client, FUNC0(nr, LM93_PWM_CTL2));

	switch (val) {
	case 0:
		ctl2 |= 0xF1; /* enable manual override, set PWM to max */
		break;
	case 1:
		ctl2 |= 0x01; /* enable manual override */
		break;
	case 2:
		ctl2 &= ~0x01; /* disable manual override */
		break;
	default:
		FUNC6(&data->update_lock);
		return -EINVAL;
	}

	FUNC4(client, FUNC0(nr, LM93_PWM_CTL2), ctl2);
	FUNC6(&data->update_lock);
	return count;
}