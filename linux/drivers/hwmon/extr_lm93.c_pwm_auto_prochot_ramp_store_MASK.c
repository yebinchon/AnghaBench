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
typedef  int u8 ;
struct lm93_data {int /*<<< orphan*/  update_lock; struct i2c_client* client; } ;
struct i2c_client {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  int ssize_t ;

/* Variables and functions */
 int FUNC0 (unsigned long) ; 
 int /*<<< orphan*/  LM93_REG_PWM_RAMP_CTL ; 
 struct lm93_data* FUNC1 (struct device*) ; 
 int FUNC2 (char const*,int,unsigned long*) ; 
 int FUNC3 (struct i2c_client*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct i2c_client*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static ssize_t FUNC7(struct device *dev,
						struct device_attribute *attr,
						const char *buf, size_t count)
{
	struct lm93_data *data = FUNC1(dev);
	struct i2c_client *client = data->client;
	u8 ramp;
	unsigned long val;
	int err;

	err = FUNC2(buf, 10, &val);
	if (err)
		return err;

	FUNC5(&data->update_lock);
	ramp = FUNC3(client, LM93_REG_PWM_RAMP_CTL);
	ramp = (ramp & 0x0f) | (FUNC0(val) << 4 & 0xf0);
	FUNC4(client, LM93_REG_PWM_RAMP_CTL, ramp);
	FUNC6(&data->update_lock);
	return count;
}