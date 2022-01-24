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
struct TYPE_3__ {int device_type; } ;
struct wacom_wac {TYPE_2__* shared; TYPE_1__ features; } ;
struct TYPE_4__ {struct hid_device* pen; struct hid_device* touch; } ;
struct wacom_hdev_data {TYPE_2__ shared; int /*<<< orphan*/  list; struct hid_device* dev; int /*<<< orphan*/  kref; } ;
struct wacom {struct wacom_wac wacom_wac; } ;
struct hid_device {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int WACOM_DEVICETYPE_PEN ; 
 int WACOM_DEVICETYPE_TOUCH ; 
 int FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/  (*) (struct wacom*),struct wacom*) ; 
 struct wacom* FUNC1 (struct hid_device*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 struct wacom_hdev_data* FUNC3 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 struct wacom_hdev_data* FUNC7 (struct hid_device*) ; 
 int /*<<< orphan*/  FUNC8 (struct wacom*) ; 
 int /*<<< orphan*/  wacom_udev_list ; 
 int /*<<< orphan*/  wacom_udev_list_lock ; 

__attribute__((used)) static int FUNC9(struct hid_device *hdev)
{
	struct wacom *wacom = FUNC1(hdev);
	struct wacom_wac *wacom_wac = &wacom->wacom_wac;
	struct wacom_hdev_data *data;
	int retval = 0;

	FUNC5(&wacom_udev_list_lock);

	data = FUNC7(hdev);
	if (!data) {
		data = FUNC3(sizeof(struct wacom_hdev_data), GFP_KERNEL);
		if (!data) {
			retval = -ENOMEM;
			goto out;
		}

		FUNC2(&data->kref);
		data->dev = hdev;
		FUNC4(&data->list, &wacom_udev_list);
	}

	wacom_wac->shared = &data->shared;

	retval = FUNC0(&hdev->dev, wacom_remove_shared_data, wacom);
	if (retval) {
		FUNC6(&wacom_udev_list_lock);
		FUNC8(wacom);
		return retval;
	}

	if (wacom_wac->features.device_type & WACOM_DEVICETYPE_TOUCH)
		wacom_wac->shared->touch = hdev;
	else if (wacom_wac->features.device_type & WACOM_DEVICETYPE_PEN)
		wacom_wac->shared->pen = hdev;

out:
	FUNC6(&wacom_udev_list_lock);
	return retval;
}