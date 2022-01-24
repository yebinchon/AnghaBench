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
struct lm93_data {int** block9; int /*<<< orphan*/  update_lock; struct i2c_client* client; } ;
struct i2c_client {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  int ssize_t ;
struct TYPE_2__ {int index; } ;

/* Variables and functions */
 size_t LM93_PWM_CTL4 ; 
 int FUNC0 (unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (int,size_t) ; 
 struct lm93_data* FUNC2 (struct device*) ; 
 int FUNC3 (char const*,int,unsigned long*) ; 
 int /*<<< orphan*/  FUNC4 (struct i2c_client*,struct lm93_data*,int) ; 
 int FUNC5 (struct i2c_client*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct i2c_client*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC9 (struct device_attribute*) ; 

__attribute__((used)) static ssize_t FUNC10(struct device *dev,
			      struct device_attribute *attr, const char *buf,
			      size_t count)
{
	int nr = (FUNC9(attr))->index;
	struct lm93_data *data = FUNC2(dev);
	struct i2c_client *client = data->client;
	u8 ctl4;
	unsigned long val;
	int err;

	err = FUNC3(buf, 10, &val);
	if (err)
		return err;

	FUNC7(&data->update_lock);
	ctl4 = FUNC5(client, FUNC1(nr, LM93_PWM_CTL4));
	ctl4 = (ctl4 & 0xf8) | FUNC0(val);
	data->block9[nr][LM93_PWM_CTL4] = ctl4;
	/* ctl4 == 0 -> 22.5KHz -> disable smart tach */
	if (!ctl4)
		FUNC4(client, data, nr);
	FUNC6(client, FUNC1(nr, LM93_PWM_CTL4), ctl4);
	FUNC8(&data->update_lock);
	return count;
}