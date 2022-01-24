#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct usbhid_device {TYPE_2__* intf; } ;
struct hiddev {int exist; int initialized; int /*<<< orphan*/  minor; struct hid_device* hid; int /*<<< orphan*/  existancelock; int /*<<< orphan*/  list_lock; int /*<<< orphan*/  list; int /*<<< orphan*/  wait; } ;
struct hid_device {unsigned int maxcollection; int quirks; struct hiddev* hiddev; TYPE_1__* collection; struct usbhid_device* driver_data; } ;
struct TYPE_4__ {int /*<<< orphan*/  minor; } ;
struct TYPE_3__ {scalar_t__ type; int /*<<< orphan*/  usage; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ HID_COLLECTION_APPLICATION ; 
 int HID_QUIRK_NO_INIT_REPORTS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct hid_device*,char*) ; 
 int /*<<< orphan*/  hiddev_class ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct hiddev*) ; 
 struct hiddev* FUNC5 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int FUNC8 (TYPE_2__*,int /*<<< orphan*/ *) ; 

int FUNC9(struct hid_device *hid, unsigned int force)
{
	struct hiddev *hiddev;
	struct usbhid_device *usbhid = hid->driver_data;
	int retval;

	if (!force) {
		unsigned int i;
		for (i = 0; i < hid->maxcollection; i++)
			if (hid->collection[i].type ==
			    HID_COLLECTION_APPLICATION &&
			    !FUNC1(hid->collection[i].usage))
				break;

		if (i == hid->maxcollection)
			return -1;
	}

	if (!(hiddev = FUNC5(sizeof(struct hiddev), GFP_KERNEL)))
		return -1;

	FUNC3(&hiddev->wait);
	FUNC0(&hiddev->list);
	FUNC7(&hiddev->list_lock);
	FUNC6(&hiddev->existancelock);
	hid->hiddev = hiddev;
	hiddev->hid = hid;
	hiddev->exist = 1;
	retval = FUNC8(usbhid->intf, &hiddev_class);
	if (retval) {
		FUNC2(hid, "Not able to get a minor for this device\n");
		hid->hiddev = NULL;
		FUNC4(hiddev);
		return -1;
	}

	/*
	 * If HID_QUIRK_NO_INIT_REPORTS is set, make sure we don't initialize
	 * the reports.
	 */
	hiddev->initialized = hid->quirks & HID_QUIRK_NO_INIT_REPORTS;

	hiddev->minor = usbhid->intf->minor;

	return 0;
}