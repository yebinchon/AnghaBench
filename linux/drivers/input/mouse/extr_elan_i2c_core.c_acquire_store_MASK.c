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
struct i2c_client {int /*<<< orphan*/  irq; } ;
struct elan_tp_data {int baseline_ready; int /*<<< orphan*/  sysfs_mutex; int /*<<< orphan*/  mode; int /*<<< orphan*/  client; TYPE_1__* ops; int /*<<< orphan*/  min_baseline; int /*<<< orphan*/  max_baseline; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  int ssize_t ;
struct TYPE_2__ {int (* set_mode ) (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ;int (* get_baseline_data ) (int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  ETP_ENABLE_CALIBRATE ; 
 int /*<<< orphan*/  FUNC0 (struct device*,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 struct elan_tp_data* FUNC3 (struct i2c_client*) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC8 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 
 int FUNC9 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 
 int FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct i2c_client* FUNC11 (struct device*) ; 

__attribute__((used)) static ssize_t FUNC12(struct device *dev, struct device_attribute *attr,
			     const char *buf, size_t count)
{
	struct i2c_client *client = FUNC11(dev);
	struct elan_tp_data *data = FUNC3(client);
	int error;
	int retval;

	retval = FUNC5(&data->sysfs_mutex);
	if (retval)
		return retval;

	FUNC1(client->irq);

	data->baseline_ready = false;

	data->mode |= ETP_ENABLE_CALIBRATE;
	retval = data->ops->set_mode(data->client, data->mode);
	if (retval) {
		FUNC0(dev, "Failed to enable calibration mode to get baseline: %d\n",
			retval);
		goto out;
	}

	FUNC4(250);

	retval = data->ops->get_baseline_data(data->client, true,
					      &data->max_baseline);
	if (retval) {
		FUNC0(dev, "Failed to read max baseline form device: %d\n",
			retval);
		goto out_disable_calibrate;
	}

	retval = data->ops->get_baseline_data(data->client, false,
					      &data->min_baseline);
	if (retval) {
		FUNC0(dev, "Failed to read min baseline form device: %d\n",
			retval);
		goto out_disable_calibrate;
	}

	data->baseline_ready = true;

out_disable_calibrate:
	data->mode &= ~ETP_ENABLE_CALIBRATE;
	error = data->ops->set_mode(data->client, data->mode);
	if (error) {
		FUNC0(dev, "Failed to disable calibration mode after acquiring baseline: %d\n",
			error);
		if (!retval)
			retval = error;
	}
out:
	FUNC2(client->irq);
	FUNC6(&data->sysfs_mutex);
	return retval ?: count;
}