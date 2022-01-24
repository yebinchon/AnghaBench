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
struct i2c_client {int dummy; } ;
struct gl520_data {int* in_min; int /*<<< orphan*/  update_lock; struct i2c_client* client; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  int ssize_t ;
struct TYPE_2__ {int index; } ;

/* Variables and functions */
 int /*<<< orphan*/ * GL520_REG_IN_MIN ; 
 int FUNC0 (long) ; 
 int FUNC1 (long) ; 
 struct gl520_data* FUNC2 (struct device*) ; 
 int FUNC3 (struct i2c_client*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct i2c_client*,int /*<<< orphan*/ ,int) ; 
 int FUNC5 (char const*,int,long*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC8 (struct device_attribute*) ; 

__attribute__((used)) static ssize_t FUNC9(struct device *dev, struct device_attribute *attr,
			    const char *buf, size_t count)
{
	struct gl520_data *data = FUNC2(dev);
	struct i2c_client *client = data->client;
	int n = FUNC8(attr)->index;
	u8 r;
	long v;
	int err;

	err = FUNC5(buf, 10, &v);
	if (err)
		return err;

	FUNC6(&data->update_lock);

	if (n == 0)
		r = FUNC1(v);
	else
		r = FUNC0(v);

	data->in_min[n] = r;

	if (n < 4)
		FUNC4(client, GL520_REG_IN_MIN[n],
				  (FUNC3(client, GL520_REG_IN_MIN[n])
				   & ~0xff) | r);
	else
		FUNC4(client, GL520_REG_IN_MIN[n], r);

	FUNC7(&data->update_lock);
	return count;
}