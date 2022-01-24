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
struct inode {int dummy; } ;
struct file {struct evdev_client* private_data; } ;
struct evdev_client {int /*<<< orphan*/ * evmasks; struct evdev* evdev; } ;
struct evdev {int /*<<< orphan*/  mutex; } ;

/* Variables and functions */
 unsigned int EV_CNT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct evdev*) ; 
 int /*<<< orphan*/  FUNC2 (struct evdev*,struct evdev_client*) ; 
 int /*<<< orphan*/  FUNC3 (struct evdev*,struct evdev_client*) ; 
 int /*<<< orphan*/  FUNC4 (struct evdev_client*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC7(struct inode *inode, struct file *file)
{
	struct evdev_client *client = file->private_data;
	struct evdev *evdev = client->evdev;
	unsigned int i;

	FUNC5(&evdev->mutex);
	FUNC3(evdev, client);
	FUNC6(&evdev->mutex);

	FUNC2(evdev, client);

	for (i = 0; i < EV_CNT; ++i)
		FUNC0(client->evmasks[i]);

	FUNC4(client);

	FUNC1(evdev);

	return 0;
}