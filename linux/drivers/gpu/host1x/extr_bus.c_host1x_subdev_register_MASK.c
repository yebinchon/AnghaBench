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
struct host1x_subdev {struct host1x_client* client; int /*<<< orphan*/  list; } ;
struct host1x_device {int registered; int /*<<< orphan*/  dev; int /*<<< orphan*/  subdevs; int /*<<< orphan*/  subdevs_lock; int /*<<< orphan*/  clients_lock; int /*<<< orphan*/  active; int /*<<< orphan*/  clients; } ;
struct host1x_client {int /*<<< orphan*/ * parent; int /*<<< orphan*/  list; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC6(struct host1x_device *device,
				   struct host1x_subdev *subdev,
				   struct host1x_client *client)
{
	int err;

	/*
	 * Move the subdevice to the list of active (registered) subdevices
	 * and associate it with a client. At the same time, associate the
	 * client with its parent device.
	 */
	FUNC4(&device->subdevs_lock);
	FUNC4(&device->clients_lock);
	FUNC3(&client->list, &device->clients);
	FUNC3(&subdev->list, &device->active);
	client->parent = &device->dev;
	subdev->client = client;
	FUNC5(&device->clients_lock);
	FUNC5(&device->subdevs_lock);

	if (FUNC2(&device->subdevs)) {
		err = FUNC1(&device->dev);
		if (err < 0)
			FUNC0(&device->dev, "failed to add: %d\n", err);
		else
			device->registered = true;
	}
}