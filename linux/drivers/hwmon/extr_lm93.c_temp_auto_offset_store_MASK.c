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
struct sensor_device_attribute_2 {int index; int nr; } ;
struct TYPE_2__ {int* offset; } ;
struct lm93_data {int sfc2; int /*<<< orphan*/  update_lock; TYPE_1__ block10; struct i2c_client* client; } ;
struct i2c_client {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  int ssize_t ;

/* Variables and functions */
 int /*<<< orphan*/  LM93_REG_SFC2 ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (int,unsigned long,int,int) ; 
 struct lm93_data* FUNC2 (struct device*) ; 
 int FUNC3 (char const*,int,unsigned long*) ; 
 int FUNC4 (struct i2c_client*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct i2c_client*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 struct sensor_device_attribute_2* FUNC8 (struct device_attribute*) ; 

__attribute__((used)) static ssize_t FUNC9(struct device *dev,
				      struct device_attribute *attr,
				      const char *buf, size_t count)
{
	struct sensor_device_attribute_2 *s_attr = FUNC8(attr);
	int nr = s_attr->index;
	int ofs = s_attr->nr;
	struct lm93_data *data = FUNC2(dev);
	struct i2c_client *client = data->client;
	unsigned long val;
	int err;

	err = FUNC3(buf, 10, &val);
	if (err)
		return err;

	FUNC6(&data->update_lock);
	/* force 0.5C/bit mode */
	data->sfc2 = FUNC4(client, LM93_REG_SFC2);
	data->sfc2 |= ((nr < 2) ? 0x10 : 0x20);
	FUNC5(client, LM93_REG_SFC2, data->sfc2);
	data->block10.offset[ofs] = FUNC1(
			data->block10.offset[ofs], val, nr, 1);
	FUNC5(client, FUNC0(ofs),
			data->block10.offset[ofs]);
	FUNC7(&data->update_lock);
	return count;
}