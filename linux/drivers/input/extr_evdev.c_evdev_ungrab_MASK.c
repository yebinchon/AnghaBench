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
struct evdev_client {int dummy; } ;
struct evdev {int /*<<< orphan*/  handle; int /*<<< orphan*/  grab; int /*<<< orphan*/  mutex; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 struct evdev_client* FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 () ; 

__attribute__((used)) static int FUNC5(struct evdev *evdev, struct evdev_client *client)
{
	struct evdev_client *grab = FUNC3(evdev->grab,
					FUNC1(&evdev->mutex));

	if (grab != client)
		return  -EINVAL;

	FUNC2(evdev->grab, NULL);
	FUNC4();
	FUNC0(&evdev->handle);

	return 0;
}