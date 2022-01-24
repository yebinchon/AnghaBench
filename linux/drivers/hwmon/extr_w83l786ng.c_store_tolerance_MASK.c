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
struct w83l786ng_data {int* tolerance; int /*<<< orphan*/  update_lock; struct i2c_client* client; } ;
struct i2c_client {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  int ssize_t ;
struct TYPE_2__ {int index; } ;

/* Variables and functions */
 int /*<<< orphan*/  W83L786NG_REG_TOLERANCE ; 
 int FUNC0 (unsigned long,int /*<<< orphan*/ ,int) ; 
 struct w83l786ng_data* FUNC1 (struct device*) ; 
 int FUNC2 (char const*,int,unsigned long*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC5 (struct device_attribute*) ; 
 int FUNC6 (struct i2c_client*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct i2c_client*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static ssize_t
FUNC8(struct device *dev, struct device_attribute *attr,
		const char *buf, size_t count)
{
	int nr = FUNC5(attr)->index;
	struct w83l786ng_data *data = FUNC1(dev);
	struct i2c_client *client = data->client;
	u8 tol_tmp, tol_mask;
	unsigned long val;
	int err;

	err = FUNC2(buf, 10, &val);
	if (err)
		return err;

	FUNC3(&data->update_lock);
	tol_mask = FUNC6(client,
	    W83L786NG_REG_TOLERANCE) & ((nr == 1) ? 0x0f : 0xf0);
	tol_tmp = FUNC0(val, 0, 15);
	tol_tmp &= 0x0f;
	data->tolerance[nr] = tol_tmp;
	if (nr == 1)
		tol_tmp <<= 4;

	FUNC7(client, W83L786NG_REG_TOLERANCE,
			      tol_mask | tol_tmp);
	FUNC4(&data->update_lock);
	return count;
}