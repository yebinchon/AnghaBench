#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int inputmode; } ;
struct wacom_features {scalar_t__ hid_type; scalar_t__ check_for_hid_type; } ;
struct wacom_wac {int mode_report; TYPE_1__ hid_data; int /*<<< orphan*/  pen_fifo; struct wacom_features features; } ;
struct wacom {int /*<<< orphan*/  mode_change_work; int /*<<< orphan*/  remote_work; int /*<<< orphan*/  battery_work; int /*<<< orphan*/  wireless_work; int /*<<< orphan*/  init_work; int /*<<< orphan*/  lock; struct usb_interface* intf; struct usb_device* usbdev; struct wacom_wac wacom_wac; struct hid_device* hdev; } ;
struct usb_interface {int dummy; } ;
struct usb_device {int dummy; } ;
struct hid_device_id {scalar_t__ driver_data; } ;
struct TYPE_5__ {int /*<<< orphan*/  parent; } ;
struct hid_device {scalar_t__ type; scalar_t__ bus; TYPE_2__ dev; int /*<<< orphan*/  quirks; } ;

/* Variables and functions */
 scalar_t__ BUS_BLUETOOTH ; 
 int EINVAL ; 
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  HID_QUIRK_NOGET ; 
 int /*<<< orphan*/  HID_QUIRK_NO_INIT_REPORTS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  WACOM_PKGLEN_MAX ; 
 int /*<<< orphan*/  dev_attr_speed ; 
 int FUNC2 (TYPE_2__*,int /*<<< orphan*/ *) ; 
 struct wacom* FUNC3 (TYPE_2__*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct hid_device*,char*) ; 
 int FUNC5 (struct hid_device*) ; 
 int /*<<< orphan*/  FUNC6 (struct hid_device*,struct wacom*) ; 
 int /*<<< orphan*/  FUNC7 (struct hid_device*,char*,int) ; 
 struct usb_device* FUNC8 (struct usb_interface*) ; 
 int FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 struct usb_interface* FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  wacom_battery_work ; 
 int /*<<< orphan*/  wacom_init_work ; 
 int /*<<< orphan*/  wacom_mode_change_work ; 
 int FUNC12 (struct wacom*,int) ; 
 int /*<<< orphan*/  wacom_remote_work ; 
 int /*<<< orphan*/  wacom_wireless_work ; 

__attribute__((used)) static int FUNC13(struct hid_device *hdev,
		const struct hid_device_id *id)
{
	struct usb_interface *intf = FUNC11(hdev->dev.parent);
	struct usb_device *dev = FUNC8(intf);
	struct wacom *wacom;
	struct wacom_wac *wacom_wac;
	struct wacom_features *features;
	int error;

	if (!id->driver_data)
		return -EINVAL;

	hdev->quirks |= HID_QUIRK_NO_INIT_REPORTS;

	/* hid-core sets this quirk for the boot interface */
	hdev->quirks &= ~HID_QUIRK_NOGET;

	wacom = FUNC3(&hdev->dev, sizeof(struct wacom), GFP_KERNEL);
	if (!wacom)
		return -ENOMEM;

	FUNC6(hdev, wacom);
	wacom->hdev = hdev;

	wacom_wac = &wacom->wacom_wac;
	wacom_wac->features = *((struct wacom_features *)id->driver_data);
	features = &wacom_wac->features;

	if (features->check_for_hid_type && features->hid_type != hdev->type)
		return -ENODEV;

	error = FUNC9(&wacom_wac->pen_fifo, WACOM_PKGLEN_MAX, GFP_KERNEL);
	if (error)
		return error;

	wacom_wac->hid_data.inputmode = -1;
	wacom_wac->mode_report = -1;

	wacom->usbdev = dev;
	wacom->intf = intf;
	FUNC10(&wacom->lock);
	FUNC0(&wacom->init_work, wacom_init_work);
	FUNC1(&wacom->wireless_work, wacom_wireless_work);
	FUNC1(&wacom->battery_work, wacom_battery_work);
	FUNC1(&wacom->remote_work, wacom_remote_work);
	FUNC1(&wacom->mode_change_work, wacom_mode_change_work);

	/* ask for the report descriptor to be loaded by HID */
	error = FUNC5(hdev);
	if (error) {
		FUNC4(hdev, "parse failed\n");
		return error;
	}

	error = FUNC12(wacom, false);
	if (error)
		return error;

	if (hdev->bus == BUS_BLUETOOTH) {
		error = FUNC2(&hdev->dev, &dev_attr_speed);
		if (error)
			FUNC7(hdev,
				 "can't create sysfs speed attribute err: %d\n",
				 error);
	}

	return 0;
}