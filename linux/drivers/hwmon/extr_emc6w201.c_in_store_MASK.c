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
typedef  int /*<<< orphan*/  u8 ;
struct i2c_client {int dummy; } ;
struct emc6w201_data {long** in; int /*<<< orphan*/  update_lock; struct i2c_client* client; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  int ssize_t ;
struct TYPE_2__ {int index; int nr; } ;

/* Variables and functions */
 long FUNC0 (long,int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 long FUNC3 (long,int /*<<< orphan*/ ,int) ; 
 struct emc6w201_data* FUNC4 (struct device*) ; 
 int FUNC5 (struct i2c_client*,int /*<<< orphan*/ ,long) ; 
 int FUNC6 (char const*,int,long*) ; 
 int min ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int* nominal_mv ; 
 TYPE_1__* FUNC9 (struct device_attribute*) ; 

__attribute__((used)) static ssize_t FUNC10(struct device *dev, struct device_attribute *devattr,
			const char *buf, size_t count)
{
	struct emc6w201_data *data = FUNC4(dev);
	struct i2c_client *client = data->client;
	int sf = FUNC9(devattr)->index;
	int nr = FUNC9(devattr)->nr;
	int err;
	long val;
	u8 reg;

	err = FUNC6(buf, 10, &val);
	if (err < 0)
		return err;

	val = FUNC3(val, 0, 255 * nominal_mv[nr] / 192);
	val = FUNC0(val * 192, nominal_mv[nr]);
	reg = (sf == min) ? FUNC2(nr)
			  : FUNC1(nr);

	FUNC7(&data->update_lock);
	data->in[sf][nr] = val;
	err = FUNC5(client, reg, data->in[sf][nr]);
	FUNC8(&data->update_lock);

	return err < 0 ? err : count;
}