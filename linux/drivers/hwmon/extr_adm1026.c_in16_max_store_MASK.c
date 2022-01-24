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
struct i2c_client {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct adm1026_data {int /*<<< orphan*/  update_lock; int /*<<< orphan*/ * in_max; struct i2c_client* client; } ;
typedef  int ssize_t ;

/* Variables and functions */
 int /*<<< orphan*/ * ADM1026_REG_IN_MAX ; 
 int /*<<< orphan*/  FUNC0 (int,scalar_t__) ; 
 scalar_t__ INT_MAX ; 
 int /*<<< orphan*/  INT_MIN ; 
 scalar_t__ NEG12_OFFSET ; 
 int /*<<< orphan*/  FUNC1 (struct i2c_client*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (long,int /*<<< orphan*/ ,scalar_t__) ; 
 struct adm1026_data* FUNC3 (struct device*) ; 
 int FUNC4 (char const*,int,long*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static ssize_t FUNC7(struct device *dev,
			      struct device_attribute *attr, const char *buf,
			      size_t count)
{
	struct adm1026_data *data = FUNC3(dev);
	struct i2c_client *client = data->client;
	long val;
	int err;

	err = FUNC4(buf, 10, &val);
	if (err)
		return err;

	FUNC5(&data->update_lock);
	data->in_max[16] = FUNC0(16,
				      FUNC2(val, INT_MIN,
						INT_MAX - NEG12_OFFSET) +
				      NEG12_OFFSET);
	FUNC1(client, ADM1026_REG_IN_MAX[16], data->in_max[16]);
	FUNC6(&data->update_lock);
	return count;
}