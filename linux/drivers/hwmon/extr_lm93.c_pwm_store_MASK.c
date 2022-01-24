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
struct lm93_data {int /*<<< orphan*/  update_lock; int /*<<< orphan*/ * pwm_override; struct i2c_client* client; } ;
struct i2c_client {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  int ssize_t ;
struct TYPE_2__ {int index; } ;

/* Variables and functions */
 int /*<<< orphan*/  LM93_PWM_CTL2 ; 
 int /*<<< orphan*/  LM93_PWM_CTL4 ; 
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  LM93_PWM_MAP_HI_FREQ ; 
 int /*<<< orphan*/  LM93_PWM_MAP_LO_FREQ ; 
 int FUNC1 (unsigned long,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ ) ; 
 struct lm93_data* FUNC3 (struct device*) ; 
 int FUNC4 (char const*,int,unsigned long*) ; 
 int FUNC5 (struct i2c_client*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct i2c_client*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC9 (struct device_attribute*) ; 

__attribute__((used)) static ssize_t FUNC10(struct device *dev, struct device_attribute *attr,
			 const char *buf, size_t count)
{
	int nr = (FUNC9(attr))->index;
	struct lm93_data *data = FUNC3(dev);
	struct i2c_client *client = data->client;
	u8 ctl2, ctl4;
	unsigned long val;
	int err;

	err = FUNC4(buf, 10, &val);
	if (err)
		return err;

	FUNC7(&data->update_lock);
	ctl2 = FUNC5(client, FUNC2(nr, LM93_PWM_CTL2));
	ctl4 = FUNC5(client, FUNC2(nr, LM93_PWM_CTL4));
	ctl2 = (ctl2 & 0x0f) | FUNC1(val, (ctl4 & 0x07) ?
			LM93_PWM_MAP_LO_FREQ : LM93_PWM_MAP_HI_FREQ) << 4;
	/* save user commanded value */
	data->pwm_override[nr] = FUNC0(ctl2 >> 4,
			(ctl4 & 0x07) ?  LM93_PWM_MAP_LO_FREQ :
			LM93_PWM_MAP_HI_FREQ);
	FUNC6(client, FUNC2(nr, LM93_PWM_CTL2), ctl2);
	FUNC8(&data->update_lock);
	return count;
}