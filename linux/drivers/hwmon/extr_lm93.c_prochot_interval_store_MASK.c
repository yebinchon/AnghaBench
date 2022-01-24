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
struct lm93_data {int prochot_interval; int /*<<< orphan*/  update_lock; struct i2c_client* client; } ;
struct i2c_client {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  int ssize_t ;
struct TYPE_2__ {int index; } ;

/* Variables and functions */
 int FUNC0 (unsigned long) ; 
 int /*<<< orphan*/  LM93_REG_PROCHOT_INTERVAL ; 
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
	u8 tmp;
	unsigned long val;
	int err;

	err = FUNC2(buf, 10, &val);
	if (err)
		return err;

	FUNC5(&data->update_lock);
	tmp = FUNC3(client, LM93_REG_PROCHOT_INTERVAL);
	if (nr == 1)
		tmp = (tmp & 0x0f) | (FUNC0(val) << 4);
	else
		tmp = (tmp & 0xf0) | FUNC0(val);
	data->prochot_interval = tmp;
	FUNC4(client, LM93_REG_PROCHOT_INTERVAL, tmp);
	FUNC6(&data->update_lock);
	return count;
}