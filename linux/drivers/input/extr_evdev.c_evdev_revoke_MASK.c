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
struct file {int dummy; } ;
struct evdev_client {int revoked; } ;
struct evdev {int /*<<< orphan*/  wait; int /*<<< orphan*/  handle; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct evdev*,struct evdev_client*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,struct file*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC3(struct evdev *evdev, struct evdev_client *client,
			struct file *file)
{
	client->revoked = true;
	FUNC0(evdev, client);
	FUNC1(&evdev->handle, file);
	FUNC2(&evdev->wait);

	return 0;
}