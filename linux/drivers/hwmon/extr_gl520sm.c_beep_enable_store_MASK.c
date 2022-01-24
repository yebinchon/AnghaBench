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
struct i2c_client {int dummy; } ;
struct gl520_data {int beep_enable; int /*<<< orphan*/  update_lock; struct i2c_client* client; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  int ssize_t ;

/* Variables and functions */
 int /*<<< orphan*/  GL520_REG_BEEP_ENABLE ; 
 struct gl520_data* FUNC0 (struct device*) ; 
 int FUNC1 (struct i2c_client*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct i2c_client*,int /*<<< orphan*/ ,int) ; 
 int FUNC3 (char const*,int,unsigned long*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static ssize_t FUNC6(struct device *dev,
				 struct device_attribute *attr,
				 const char *buf, size_t count)
{
	struct gl520_data *data = FUNC0(dev);
	struct i2c_client *client = data->client;
	u8 r;
	unsigned long v;
	int err;

	err = FUNC3(buf, 10, &v);
	if (err)
		return err;

	r = (v ? 0 : 1);

	FUNC4(&data->update_lock);
	data->beep_enable = !r;
	FUNC2(client, GL520_REG_BEEP_ENABLE,
			  (FUNC1(client, GL520_REG_BEEP_ENABLE)
			   & ~0x04) | (r << 2));
	FUNC5(&data->update_lock);
	return count;
}