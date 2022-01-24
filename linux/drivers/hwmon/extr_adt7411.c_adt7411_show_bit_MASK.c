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
struct sensor_device_attribute_2 {int nr; int /*<<< orphan*/  index; } ;
struct i2c_client {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct adt7411_data {struct i2c_client* client; } ;
typedef  int ssize_t ;

/* Variables and functions */
 struct adt7411_data* FUNC0 (struct device*) ; 
 int FUNC1 (struct i2c_client*,int /*<<< orphan*/ ) ; 
 int FUNC2 (char*,char*,int) ; 
 struct sensor_device_attribute_2* FUNC3 (struct device_attribute*) ; 

__attribute__((used)) static ssize_t FUNC4(struct device *dev,
				struct device_attribute *attr, char *buf)
{
	struct sensor_device_attribute_2 *attr2 = FUNC3(attr);
	struct adt7411_data *data = FUNC0(dev);
	struct i2c_client *client = data->client;
	int ret = FUNC1(client, attr2->index);

	return ret < 0 ? ret : FUNC2(buf, "%u\n", !!(ret & attr2->nr));
}