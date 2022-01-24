#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct input_handle {struct evdev* private; } ;
struct TYPE_3__ {int /*<<< orphan*/  devt; } ;
struct evdev {TYPE_1__ dev; int /*<<< orphan*/  cdev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (struct evdev*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct input_handle*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 

__attribute__((used)) static void FUNC6(struct input_handle *handle)
{
	struct evdev *evdev = handle->private;

	FUNC1(&evdev->cdev, &evdev->dev);
	FUNC2(evdev);
	FUNC3(FUNC0(evdev->dev.devt));
	FUNC4(handle);
	FUNC5(&evdev->dev);
}