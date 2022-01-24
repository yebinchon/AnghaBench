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
struct lm63_data {long temp2_offset; int /*<<< orphan*/  update_lock; struct i2c_client* client; } ;
struct i2c_client {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  int ssize_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (long) ; 
 int /*<<< orphan*/  LM63_REG_REMOTE_TCRIT_HYST ; 
 struct lm63_data* FUNC1 (struct device*) ; 
 int /*<<< orphan*/  FUNC2 (struct i2c_client*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC3 (char const*,int,long*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 long FUNC6 (struct lm63_data*,int) ; 

__attribute__((used)) static ssize_t FUNC7(struct device *dev,
				     struct device_attribute *dummy,
				     const char *buf, size_t count)
{
	struct lm63_data *data = FUNC1(dev);
	struct i2c_client *client = data->client;
	long val;
	int err;
	long hyst;

	err = FUNC3(buf, 10, &val);
	if (err)
		return err;

	FUNC4(&data->update_lock);
	hyst = FUNC6(data, 2) + data->temp2_offset - val;
	FUNC2(client, LM63_REG_REMOTE_TCRIT_HYST,
				  FUNC0(hyst));
	FUNC5(&data->update_lock);
	return count;
}