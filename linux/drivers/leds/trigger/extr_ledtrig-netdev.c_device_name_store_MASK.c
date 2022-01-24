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
struct led_netdev_data {char* device_name; int /*<<< orphan*/  lock; scalar_t__ last_activity; int /*<<< orphan*/  mode; int /*<<< orphan*/ * net_dev; int /*<<< orphan*/  work; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  size_t ssize_t ;

/* Variables and functions */
 size_t EINVAL ; 
 size_t IFNAMSIZ ; 
 int /*<<< orphan*/  NETDEV_LED_MODE_LINKUP ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  init_net ; 
 struct led_netdev_data* FUNC4 (struct device*) ; 
 int /*<<< orphan*/  FUNC5 (char*,char const*,size_t) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct led_netdev_data*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static ssize_t FUNC11(struct device *dev,
				 struct device_attribute *attr, const char *buf,
				 size_t size)
{
	struct led_netdev_data *trigger_data = FUNC4(dev);

	if (size >= IFNAMSIZ)
		return -EINVAL;

	FUNC0(&trigger_data->work);

	FUNC9(&trigger_data->lock);

	if (trigger_data->net_dev) {
		FUNC3(trigger_data->net_dev);
		trigger_data->net_dev = NULL;
	}

	FUNC5(trigger_data->device_name, buf, size);
	trigger_data->device_name[size] = 0;
	if (size > 0 && trigger_data->device_name[size - 1] == '\n')
		trigger_data->device_name[size - 1] = 0;

	if (trigger_data->device_name[0] != 0)
		trigger_data->net_dev =
		    FUNC2(&init_net, trigger_data->device_name);

	FUNC1(NETDEV_LED_MODE_LINKUP, &trigger_data->mode);
	if (trigger_data->net_dev != NULL)
		if (FUNC6(trigger_data->net_dev))
			FUNC8(NETDEV_LED_MODE_LINKUP, &trigger_data->mode);

	trigger_data->last_activity = 0;

	FUNC7(trigger_data);
	FUNC10(&trigger_data->lock);

	return size;
}