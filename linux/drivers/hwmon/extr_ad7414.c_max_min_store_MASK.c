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
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct ad7414_data {long* temps; int /*<<< orphan*/  lock; struct i2c_client* client; } ;
typedef  int ssize_t ;
struct TYPE_2__ {int index; } ;

/* Variables and functions */
 int /*<<< orphan*/ * AD7414_REG_LIMIT ; 
 int /*<<< orphan*/  FUNC0 (struct i2c_client*,int /*<<< orphan*/ ,long) ; 
 long FUNC1 (long,int,int) ; 
 struct ad7414_data* FUNC2 (struct device*) ; 
 int FUNC3 (char const*,int,long*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC6 (struct device_attribute*) ; 

__attribute__((used)) static ssize_t FUNC7(struct device *dev,
			     struct device_attribute *attr, const char *buf,
			     size_t count)
{
	struct ad7414_data *data = FUNC2(dev);
	struct i2c_client *client = data->client;
	int index = FUNC6(attr)->index;
	u8 reg = AD7414_REG_LIMIT[index];
	long temp;
	int ret = FUNC3(buf, 10, &temp);

	if (ret < 0)
		return ret;

	temp = FUNC1(temp, -40000, 85000);
	temp = (temp + (temp < 0 ? -500 : 500)) / 1000;

	FUNC4(&data->lock);
	data->temps[index] = temp;
	FUNC0(client, reg, temp);
	FUNC5(&data->lock);
	return count;
}