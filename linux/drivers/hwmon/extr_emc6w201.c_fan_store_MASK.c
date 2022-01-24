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
struct i2c_client {int dummy; } ;
struct emc6w201_data {unsigned long** fan; int /*<<< orphan*/  update_lock; struct i2c_client* client; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  int ssize_t ;
struct TYPE_2__ {int index; int nr; } ;

/* Variables and functions */
 unsigned long FUNC0 (unsigned int,unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 unsigned long FUNC2 (unsigned long,int /*<<< orphan*/ ,int) ; 
 struct emc6w201_data* FUNC3 (struct device*) ; 
 int FUNC4 (struct i2c_client*,int /*<<< orphan*/ ,unsigned long) ; 
 int FUNC5 (char const*,int,unsigned long*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC8 (struct device_attribute*) ; 

__attribute__((used)) static ssize_t FUNC9(struct device *dev, struct device_attribute *devattr,
			 const char *buf, size_t count)
{
	struct emc6w201_data *data = FUNC3(dev);
	struct i2c_client *client = data->client;
	int sf = FUNC8(devattr)->index;
	int nr = FUNC8(devattr)->nr;
	int err;
	unsigned long val;

	err = FUNC5(buf, 10, &val);
	if (err < 0)
		return err;

	if (val == 0) {
		val = 0xFFFF;
	} else {
		val = FUNC0(5400000U, val);
		val = FUNC2(val, 0, 0xFFFE);
	}

	FUNC6(&data->update_lock);
	data->fan[sf][nr] = val;
	err = FUNC4(client, FUNC1(nr),
			       data->fan[sf][nr]);
	FUNC7(&data->update_lock);

	return err < 0 ? err : count;
}