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
struct elan_tp_data {int /*<<< orphan*/  sysfs_mutex; int /*<<< orphan*/  client; TYPE_1__* ops; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  int ssize_t ;
typedef  enum tp_mode { ____Placeholder_tp_mode } tp_mode ;
struct TYPE_2__ {int (* iap_get_mode ) (int /*<<< orphan*/ ,int*) ;} ;

/* Variables and functions */
 struct elan_tp_data* FUNC0 (struct i2c_client*) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (char*,char*,int) ; 
 int FUNC4 (int /*<<< orphan*/ ,int*) ; 
 struct i2c_client* FUNC5 (struct device*) ; 

__attribute__((used)) static ssize_t FUNC6(struct device *dev,
				    struct device_attribute *attr,
				    char *buf)
{
	struct i2c_client *client = FUNC5(dev);
	struct elan_tp_data *data = FUNC0(client);
	int error;
	enum tp_mode mode;

	error = FUNC1(&data->sysfs_mutex);
	if (error)
		return error;

	error = data->ops->iap_get_mode(data->client, &mode);

	FUNC2(&data->sysfs_mutex);

	if (error)
		return error;

	return FUNC3(buf, "%d\n", (int)mode);
}