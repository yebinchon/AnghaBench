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
struct led_netdev_data {scalar_t__ net_dev; int /*<<< orphan*/  work; int /*<<< orphan*/  notifier; } ;
struct led_classdev {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (struct led_netdev_data*) ; 
 struct led_netdev_data* FUNC3 (struct led_classdev*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC5(struct led_classdev *led_cdev)
{
	struct led_netdev_data *trigger_data = FUNC3(led_cdev);

	FUNC4(&trigger_data->notifier);

	FUNC0(&trigger_data->work);

	if (trigger_data->net_dev)
		FUNC1(trigger_data->net_dev);

	FUNC2(trigger_data);
}