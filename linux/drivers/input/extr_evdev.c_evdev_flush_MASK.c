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
struct file {struct evdev_client* private_data; } ;
struct evdev_client {int /*<<< orphan*/  revoked; struct evdev* evdev; } ;
struct evdev {int /*<<< orphan*/  mutex; int /*<<< orphan*/  handle; scalar_t__ exist; } ;
typedef  int /*<<< orphan*/  fl_owner_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,struct file*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC3(struct file *file, fl_owner_t id)
{
	struct evdev_client *client = file->private_data;
	struct evdev *evdev = client->evdev;

	FUNC1(&evdev->mutex);

	if (evdev->exist && !client->revoked)
		FUNC0(&evdev->handle, file);

	FUNC2(&evdev->mutex);
	return 0;
}