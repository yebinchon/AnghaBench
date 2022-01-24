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
struct w83l786ng_data {int /*<<< orphan*/  update_lock; int /*<<< orphan*/ * fan_min; int /*<<< orphan*/ * fan_div; struct i2c_client* client; } ;
struct i2c_client {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  int ssize_t ;
struct TYPE_2__ {int index; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (unsigned long,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 struct w83l786ng_data* FUNC3 (struct device*) ; 
 int FUNC4 (char const*,int,unsigned long*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC7 (struct device_attribute*) ; 
 int /*<<< orphan*/  FUNC8 (struct i2c_client*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static ssize_t
FUNC9(struct device *dev, struct device_attribute *attr,
	      const char *buf, size_t count)
{
	int nr = FUNC7(attr)->index;
	struct w83l786ng_data *data = FUNC3(dev);
	struct i2c_client *client = data->client;
	unsigned long val;
	int err;

	err = FUNC4(buf, 10, &val);
	if (err)
		return err;

	FUNC5(&data->update_lock);
	data->fan_min[nr] = FUNC1(val, FUNC0(data->fan_div[nr]));
	FUNC8(client, FUNC2(nr),
			      data->fan_min[nr]);
	FUNC6(&data->update_lock);

	return count;
}