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
struct pcf8591_data {unsigned long aout; int /*<<< orphan*/  control; } ;
struct i2c_client {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  int ssize_t ;

/* Variables and functions */
 int EINVAL ; 
 struct pcf8591_data* FUNC0 (struct i2c_client*) ; 
 int /*<<< orphan*/  FUNC1 (struct i2c_client*,int /*<<< orphan*/ ,unsigned long) ; 
 int FUNC2 (char const*,int,unsigned long*) ; 
 struct i2c_client* FUNC3 (struct device*) ; 

__attribute__((used)) static ssize_t FUNC4(struct device *dev,
				 struct device_attribute *attr,
				 const char *buf, size_t count)
{
	unsigned long val;
	struct i2c_client *client = FUNC3(dev);
	struct pcf8591_data *data = FUNC0(client);
	int err;

	err = FUNC2(buf, 10, &val);
	if (err)
		return err;

	val /= 10;
	if (val > 255)
		return -EINVAL;

	data->aout = val;
	FUNC1(client, data->control, data->aout);
	return count;
}