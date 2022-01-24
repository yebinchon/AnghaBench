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
struct lm63_data {int* fan; int /*<<< orphan*/  update_lock; struct i2c_client* client; } ;
struct i2c_client {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  int ssize_t ;

/* Variables and functions */
 int FUNC0 (unsigned long) ; 
 int /*<<< orphan*/  LM63_REG_TACH_LIMIT_LSB ; 
 int /*<<< orphan*/  LM63_REG_TACH_LIMIT_MSB ; 
 struct lm63_data* FUNC1 (struct device*) ; 
 int /*<<< orphan*/  FUNC2 (struct i2c_client*,int /*<<< orphan*/ ,int) ; 
 int FUNC3 (char const*,int,unsigned long*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static ssize_t FUNC6(struct device *dev, struct device_attribute *dummy,
		       const char *buf, size_t count)
{
	struct lm63_data *data = FUNC1(dev);
	struct i2c_client *client = data->client;
	unsigned long val;
	int err;

	err = FUNC3(buf, 10, &val);
	if (err)
		return err;

	FUNC4(&data->update_lock);
	data->fan[1] = FUNC0(val);
	FUNC2(client, LM63_REG_TACH_LIMIT_LSB,
				  data->fan[1] & 0xFF);
	FUNC2(client, LM63_REG_TACH_LIMIT_MSB,
				  data->fan[1] >> 8);
	FUNC5(&data->update_lock);
	return count;
}