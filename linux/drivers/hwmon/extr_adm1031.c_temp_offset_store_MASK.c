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
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct adm1031_data {int /*<<< orphan*/  update_lock; int /*<<< orphan*/ * temp_offset; struct i2c_client* client; } ;
typedef  int ssize_t ;
struct TYPE_2__ {int index; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (long) ; 
 int /*<<< orphan*/  FUNC2 (struct i2c_client*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 long FUNC3 (long,int,int) ; 
 struct adm1031_data* FUNC4 (struct device*) ; 
 int FUNC5 (char const*,int,long*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC8 (struct device_attribute*) ; 

__attribute__((used)) static ssize_t FUNC9(struct device *dev,
				 struct device_attribute *attr,
				 const char *buf, size_t count)
{
	struct adm1031_data *data = FUNC4(dev);
	struct i2c_client *client = data->client;
	int nr = FUNC8(attr)->index;
	long val;
	int ret;

	ret = FUNC5(buf, 10, &val);
	if (ret)
		return ret;

	val = FUNC3(val, -15000, 15000);
	FUNC6(&data->update_lock);
	data->temp_offset[nr] = FUNC1(val);
	FUNC2(client, FUNC0(nr),
			    data->temp_offset[nr]);
	FUNC7(&data->update_lock);
	return count;
}