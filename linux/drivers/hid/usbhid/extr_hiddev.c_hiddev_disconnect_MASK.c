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
struct usbhid_device {int /*<<< orphan*/  intf; } ;
struct hiddev {int /*<<< orphan*/  existancelock; int /*<<< orphan*/  wait; int /*<<< orphan*/  hid; scalar_t__ open; scalar_t__ exist; } ;
struct hid_device {struct usbhid_device* driver_data; struct hiddev* hiddev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  hiddev_class ; 
 int /*<<< orphan*/  FUNC1 (struct hiddev*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

void FUNC6(struct hid_device *hid)
{
	struct hiddev *hiddev = hid->hiddev;
	struct usbhid_device *usbhid = hid->driver_data;

	FUNC4(usbhid->intf, &hiddev_class);

	FUNC2(&hiddev->existancelock);
	hiddev->exist = 0;

	if (hiddev->open) {
		FUNC3(&hiddev->existancelock);
		FUNC0(hiddev->hid);
		FUNC5(&hiddev->wait);
	} else {
		FUNC3(&hiddev->existancelock);
		FUNC1(hiddev);
	}
}