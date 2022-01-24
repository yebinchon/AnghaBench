#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_7__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {scalar_t__ minor; } ;
struct w83793_data {int /*<<< orphan*/  kref; int /*<<< orphan*/  hwmon_dev; int /*<<< orphan*/  watchdog_lock; int /*<<< orphan*/ * client; int /*<<< orphan*/  list; scalar_t__ watchdog_is_open; TYPE_7__ watchdog_miscdev; } ;
struct device {int dummy; } ;
struct i2c_client {struct device dev; } ;
struct TYPE_9__ {int /*<<< orphan*/  dev_attr; } ;

/* Variables and functions */
 int FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  W83793_REG_CONFIG ; 
 int /*<<< orphan*/  dev_attr_vrm ; 
 int /*<<< orphan*/  FUNC1 (struct device*,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct device*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 struct w83793_data* FUNC4 (struct i2c_client*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_7__*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 TYPE_1__* sda_single_files ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 TYPE_1__* w83793_left_fan ; 
 TYPE_1__* w83793_left_pwm ; 
 int FUNC11 (struct i2c_client*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  w83793_release_resources ; 
 TYPE_1__* w83793_sensor_attr_2 ; 
 TYPE_1__* w83793_temp ; 
 TYPE_1__* w83793_vid ; 
 int /*<<< orphan*/  FUNC12 (struct i2c_client*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  watchdog_data_mutex ; 
 int /*<<< orphan*/  FUNC13 (struct w83793_data*) ; 
 int /*<<< orphan*/  watchdog_notifier ; 

__attribute__((used)) static int FUNC14(struct i2c_client *client)
{
	struct w83793_data *data = FUNC4(client);
	struct device *dev = &client->dev;
	int i, tmp;

	/* Unregister the watchdog (if registered) */
	if (data->watchdog_miscdev.minor) {
		FUNC7(&data->watchdog_miscdev);

		if (data->watchdog_is_open) {
			FUNC1(&client->dev,
				"i2c client detached with watchdog open! "
				"Stopping watchdog.\n");
			FUNC13(data);
		}

		FUNC8(&watchdog_data_mutex);
		FUNC6(&data->list);
		FUNC9(&watchdog_data_mutex);

		/* Tell the watchdog code the client is gone */
		FUNC8(&data->watchdog_lock);
		data->client = NULL;
		FUNC9(&data->watchdog_lock);
	}

	/* Reset Configuration Register to Disable Watch Dog Registers */
	tmp = FUNC11(client, W83793_REG_CONFIG);
	FUNC12(client, W83793_REG_CONFIG, tmp & ~0x04);

	FUNC10(&watchdog_notifier);

	FUNC3(data->hwmon_dev);

	for (i = 0; i < FUNC0(w83793_sensor_attr_2); i++)
		FUNC2(dev,
				   &w83793_sensor_attr_2[i].dev_attr);

	for (i = 0; i < FUNC0(sda_single_files); i++)
		FUNC2(dev, &sda_single_files[i].dev_attr);

	for (i = 0; i < FUNC0(w83793_vid); i++)
		FUNC2(dev, &w83793_vid[i].dev_attr);
	FUNC2(dev, &dev_attr_vrm);

	for (i = 0; i < FUNC0(w83793_left_fan); i++)
		FUNC2(dev, &w83793_left_fan[i].dev_attr);

	for (i = 0; i < FUNC0(w83793_left_pwm); i++)
		FUNC2(dev, &w83793_left_pwm[i].dev_attr);

	for (i = 0; i < FUNC0(w83793_temp); i++)
		FUNC2(dev, &w83793_temp[i].dev_attr);

	/* Decrease data reference counter */
	FUNC8(&watchdog_data_mutex);
	FUNC5(&data->kref, w83793_release_resources);
	FUNC9(&watchdog_data_mutex);

	return 0;
}