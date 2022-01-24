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
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct adm1031_data {int* fan_div; int* fan_min; int /*<<< orphan*/  update_lock; scalar_t__ valid; struct i2c_client* client; } ;
typedef  int ssize_t ;
struct TYPE_2__ {int index; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int EINVAL ; 
 int FUNC2 (int) ; 
 void* FUNC3 (struct i2c_client*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct i2c_client*,int /*<<< orphan*/ ,int) ; 
 struct adm1031_data* FUNC5 (struct device*) ; 
 int FUNC6 (char const*,int,long*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC9 (struct device_attribute*) ; 

__attribute__((used)) static ssize_t FUNC10(struct device *dev,
			     struct device_attribute *attr, const char *buf,
			     size_t count)
{
	struct adm1031_data *data = FUNC5(dev);
	struct i2c_client *client = data->client;
	int nr = FUNC9(attr)->index;
	long val;
	u8 tmp;
	int old_div;
	int new_min;
	int ret;

	ret = FUNC6(buf, 10, &val);
	if (ret)
		return ret;

	tmp = val == 8 ? 0xc0 :
	      val == 4 ? 0x80 :
	      val == 2 ? 0x40 :
	      val == 1 ? 0x00 :
	      0xff;
	if (tmp == 0xff)
		return -EINVAL;

	FUNC7(&data->update_lock);
	/* Get fresh readings */
	data->fan_div[nr] = FUNC3(client,
					       FUNC0(nr));
	data->fan_min[nr] = FUNC3(client,
					       FUNC1(nr));

	/* Write the new clock divider and fan min */
	old_div = FUNC2(data->fan_div[nr]);
	data->fan_div[nr] = tmp | (0x3f & data->fan_div[nr]);
	new_min = data->fan_min[nr] * old_div / val;
	data->fan_min[nr] = new_min > 0xff ? 0xff : new_min;

	FUNC4(client, FUNC0(nr),
			    data->fan_div[nr]);
	FUNC4(client, FUNC1(nr),
			    data->fan_min[nr]);

	/* Invalidate the cache: fan speed is no longer valid */
	data->valid = 0;
	FUNC8(&data->update_lock);
	return count;
}