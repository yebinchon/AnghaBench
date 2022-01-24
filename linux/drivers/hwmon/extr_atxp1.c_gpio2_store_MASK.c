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
struct TYPE_2__ {unsigned long gpio2; } ;
struct atxp1_data {scalar_t__ valid; TYPE_1__ reg; struct i2c_client* client; } ;
typedef  int ssize_t ;

/* Variables and functions */
 int /*<<< orphan*/  ATXP1_GPIO2 ; 
 struct atxp1_data* FUNC0 (struct device*) ; 
 int /*<<< orphan*/  FUNC1 (struct device*,char*,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (struct i2c_client*,int /*<<< orphan*/ ,unsigned long) ; 
 int FUNC3 (char const*,int,unsigned long*) ; 

__attribute__((used)) static ssize_t FUNC4(struct device *dev, struct device_attribute *attr,
			   const char *buf, size_t count)
{
	struct atxp1_data *data = FUNC0(dev);
	struct i2c_client *client = data->client;
	unsigned long value;
	int err;

	err = FUNC3(buf, 16, &value);
	if (err)
		return err;
	value &= 0xff;

	if (value != data->reg.gpio2) {
		FUNC1(dev, "Writing 0x%x to GPIO1.\n", (unsigned int)value);

		FUNC2(client, ATXP1_GPIO2, value);

		data->valid = 0;
	}

	return count;
}