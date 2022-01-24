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
struct w83795_data {unsigned long* target_speed; unsigned long tol_speed; int /*<<< orphan*/  update_lock; } ;
struct sensor_device_attribute_2 {int nr; int index; } ;
struct i2c_client {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  size_t ssize_t ;

/* Variables and functions */
 size_t EINVAL ; 
#define  FANIN_TARGET 129 
#define  FANIN_TOL 128 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  W83795_REG_TFTS ; 
 unsigned long FUNC2 (unsigned long,int /*<<< orphan*/ ,int) ; 
 unsigned long FUNC3 (unsigned long) ; 
 struct w83795_data* FUNC4 (struct i2c_client*) ; 
 scalar_t__ FUNC5 (char const*,int,unsigned long*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 struct i2c_client* FUNC8 (struct device*) ; 
 struct sensor_device_attribute_2* FUNC9 (struct device_attribute*) ; 
 int /*<<< orphan*/  FUNC10 (struct i2c_client*,int /*<<< orphan*/ ,unsigned long) ; 

__attribute__((used)) static ssize_t
FUNC11(struct device *dev, struct device_attribute *attr,
	  const char *buf, size_t count)
{
	struct i2c_client *client = FUNC8(dev);
	struct w83795_data *data = FUNC4(client);
	struct sensor_device_attribute_2 *sensor_attr =
	    FUNC9(attr);
	int nr = sensor_attr->nr;
	int index = sensor_attr->index;
	unsigned long val;

	if (FUNC5(buf, 10, &val) < 0)
		return -EINVAL;

	FUNC6(&data->update_lock);
	switch (nr) {
	case FANIN_TARGET:
		val = FUNC3(FUNC2(val, 0, 0xfff));
		FUNC10(client, FUNC0(index), val >> 4);
		FUNC10(client, FUNC1(index), (val << 4) & 0xf0);
		data->target_speed[index] = val;
		break;
	case FANIN_TOL:
		val = FUNC2(val, 0, 0x3f);
		FUNC10(client, W83795_REG_TFTS, val);
		data->tol_speed = val;
		break;
	}
	FUNC7(&data->update_lock);

	return count;
}