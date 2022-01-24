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
struct uinput_device {int /*<<< orphan*/  requests_waitq; int /*<<< orphan*/  requests_lock; int /*<<< orphan*/ ** requests; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC3(struct uinput_device *udev,
					unsigned int id)
{
	/* Mark slot as available */
	FUNC0(&udev->requests_lock);
	udev->requests[id] = NULL;
	FUNC1(&udev->requests_lock);

	FUNC2(&udev->requests_waitq);
}