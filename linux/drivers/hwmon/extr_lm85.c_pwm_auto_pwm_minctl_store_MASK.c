#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int u8 ;
struct lm85_data {int /*<<< orphan*/  update_lock; TYPE_1__* autofan; struct i2c_client* client; } ;
struct i2c_client {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  int ssize_t ;
struct TYPE_4__ {int index; } ;
struct TYPE_3__ {long min_off; } ;

/* Variables and functions */
 int /*<<< orphan*/  LM85_REG_AFAN_SPIKE1 ; 
 struct lm85_data* FUNC0 (struct device*) ; 
 int FUNC1 (char const*,int,long*) ; 
 int FUNC2 (struct i2c_client*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct i2c_client*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 TYPE_2__* FUNC6 (struct device_attribute*) ; 

__attribute__((used)) static ssize_t FUNC7(struct device *dev,
					 struct device_attribute *attr,
					 const char *buf, size_t count)
{
	int nr = FUNC6(attr)->index;
	struct lm85_data *data = FUNC0(dev);
	struct i2c_client *client = data->client;
	u8 tmp;
	long val;
	int err;

	err = FUNC1(buf, 10, &val);
	if (err)
		return err;

	FUNC4(&data->update_lock);
	data->autofan[nr].min_off = val;
	tmp = FUNC2(client, LM85_REG_AFAN_SPIKE1);
	tmp &= ~(0x20 << nr);
	if (data->autofan[nr].min_off)
		tmp |= 0x20 << nr;
	FUNC3(client, LM85_REG_AFAN_SPIKE1, tmp);
	FUNC5(&data->update_lock);
	return count;
}