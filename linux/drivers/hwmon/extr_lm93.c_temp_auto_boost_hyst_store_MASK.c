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
struct lm93_data {int sfc2; int* boost_hyst; int /*<<< orphan*/  update_lock; struct i2c_client* client; } ;
struct i2c_client {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  int ssize_t ;
struct TYPE_2__ {int index; } ;

/* Variables and functions */
 int FUNC0 (struct lm93_data*,unsigned long,int,int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  LM93_REG_SFC2 ; 
 struct lm93_data* FUNC2 (struct device*) ; 
 int FUNC3 (char const*,int,unsigned long*) ; 
 int FUNC4 (struct i2c_client*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct i2c_client*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC8 (struct device_attribute*) ; 

__attribute__((used)) static ssize_t FUNC9(struct device *dev,
					  struct device_attribute *attr,
					  const char *buf, size_t count)
{
	int nr = (FUNC8(attr))->index;
	struct lm93_data *data = FUNC2(dev);
	struct i2c_client *client = data->client;
	unsigned long val;
	int err;

	err = FUNC3(buf, 10, &val);
	if (err)
		return err;

	FUNC6(&data->update_lock);
	/* force 0.5C/bit mode */
	data->sfc2 = FUNC4(client, LM93_REG_SFC2);
	data->sfc2 |= ((nr < 2) ? 0x10 : 0x20);
	FUNC5(client, LM93_REG_SFC2, data->sfc2);
	data->boost_hyst[nr/2] = FUNC0(data, val, nr, 1);
	FUNC5(client, FUNC1(nr),
			data->boost_hyst[nr/2]);
	FUNC7(&data->update_lock);
	return count;
}