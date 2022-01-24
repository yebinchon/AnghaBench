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
struct wacom_features {scalar_t__ pktlen; scalar_t__ type; int device_type; int quirks; } ;
struct wacom_wac {struct wacom_features features; } ;
struct wacom {int resources; int /*<<< orphan*/  init_work; struct wacom_wac wacom_wac; struct hid_device* hdev; } ;
struct hid_device {int /*<<< orphan*/  dev; int /*<<< orphan*/  name; } ;

/* Variables and functions */
 scalar_t__ BAMBOO_PAD ; 
 scalar_t__ BAMBOO_PEN ; 
 scalar_t__ BAMBOO_TOUCH ; 
 int EINVAL ; 
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 unsigned int HID_CONNECT_DRIVER ; 
 unsigned int HID_CONNECT_HIDRAW ; 
 scalar_t__ HID_GENERIC ; 
 int WACOM_DEVICETYPE_NONE ; 
 int WACOM_DEVICETYPE_PAD ; 
 int WACOM_DEVICETYPE_PEN ; 
 int WACOM_DEVICETYPE_TOUCH ; 
 int WACOM_DEVICETYPE_WL_MONITOR ; 
 scalar_t__ WACOM_PKGLEN_BPAD_TOUCH ; 
 scalar_t__ WACOM_PKGLEN_BPAD_TOUCH_USB ; 
 scalar_t__ WACOM_PKGLEN_MAX ; 
 scalar_t__ WACOM_PKGLEN_PENABLED ; 
 int WACOM_QUIRK_BATTERY ; 
 scalar_t__ WIRELESS ; 
 int /*<<< orphan*/  FUNC0 (struct wacom*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,struct wacom*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,struct wacom*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct hid_device*,char*) ; 
 int FUNC6 (struct hid_device*) ; 
 int FUNC7 (struct hid_device*,unsigned int) ; 
 int /*<<< orphan*/  FUNC8 (struct hid_device*) ; 
 int FUNC9 (struct hid_device*) ; 
 int FUNC10 (struct wacom*) ; 
 int /*<<< orphan*/  FUNC11 (struct wacom_features*) ; 
 scalar_t__ FUNC12 (struct hid_device*) ; 
 int FUNC13 (struct wacom*) ; 
 int FUNC14 (struct wacom*) ; 
 int FUNC15 (struct wacom*) ; 
 int /*<<< orphan*/  FUNC16 (struct wacom*) ; 
 int FUNC17 (struct wacom*) ; 
 int /*<<< orphan*/  FUNC18 (struct wacom*) ; 
 int /*<<< orphan*/  FUNC19 (struct hid_device*,struct wacom_features*) ; 
 int /*<<< orphan*/  FUNC20 (struct wacom_features*) ; 
 int /*<<< orphan*/  FUNC21 (struct wacom_wac*) ; 
 int /*<<< orphan*/  FUNC22 (struct wacom*) ; 
 int /*<<< orphan*/  FUNC23 (struct wacom*,char*) ; 

__attribute__((used)) static int FUNC24(struct wacom *wacom, bool wireless)
{
	struct wacom_wac *wacom_wac = &wacom->wacom_wac;
	struct wacom_features *features = &wacom_wac->features;
	struct hid_device *hdev = wacom->hdev;
	int error;
	unsigned int connect_mask = HID_CONNECT_HIDRAW;

	features->pktlen = FUNC12(hdev);
	if (features->pktlen > WACOM_PKGLEN_MAX)
		return -EINVAL;

	if (!FUNC4(&hdev->dev, wacom, GFP_KERNEL))
		return -ENOMEM;

	wacom->resources = true;

	error = FUNC10(wacom);
	if (error)
		goto fail;

	/*
	 * Bamboo Pad has a generic hid handling for the Pen, and we switch it
	 * into debug mode for the touch part.
	 * We ignore the other interfaces.
	 */
	if (features->type == BAMBOO_PAD) {
		if (features->pktlen == WACOM_PKGLEN_PENABLED) {
			features->type = HID_GENERIC;
		} else if ((features->pktlen != WACOM_PKGLEN_BPAD_TOUCH) &&
			   (features->pktlen != WACOM_PKGLEN_BPAD_TOUCH_USB)) {
			error = -ENODEV;
			goto fail;
		}
	}

	/* set the default size in case we do not get them from hid */
	FUNC20(features);

	/* Retrieve the physical and logical size for touch devices */
	FUNC19(hdev, features);
	FUNC22(wacom);

	if (features->device_type == WACOM_DEVICETYPE_NONE &&
	    features->type != WIRELESS) {
		error = features->type == HID_GENERIC ? -ENODEV : 0;

		FUNC2(&hdev->dev, "Unknown device_type for '%s'. %s.",
			 hdev->name,
			 error ? "Ignoring" : "Assuming pen");

		if (error)
			goto fail;

		features->device_type |= WACOM_DEVICETYPE_PEN;
	}

	FUNC11(features);

	FUNC23(wacom, wireless ? " (WL)" : "");

	/* pen only Bamboo neither support touch nor pad */
	if ((features->type == BAMBOO_PEN) &&
	    ((features->device_type & WACOM_DEVICETYPE_TOUCH) ||
	    (features->device_type & WACOM_DEVICETYPE_PAD))) {
		error = -ENODEV;
		goto fail;
	}

	error = FUNC9(hdev);
	if (error)
		goto fail;

	if (!(features->device_type & WACOM_DEVICETYPE_WL_MONITOR) &&
	     (features->quirks & WACOM_QUIRK_BATTERY)) {
		error = FUNC13(wacom);
		if (error)
			goto fail;
	}

	error = FUNC17(wacom);
	if (error)
		goto fail;

	if (wacom->wacom_wac.features.device_type & WACOM_DEVICETYPE_PAD) {
		error = FUNC14(wacom);
		if (error)
			goto fail;

		error = FUNC15(wacom);
		if (error)
			goto fail;
	}

	if (features->type == HID_GENERIC)
		connect_mask |= HID_CONNECT_DRIVER;

	/* Regular HID work starts now */
	error = FUNC7(hdev, connect_mask);
	if (error) {
		FUNC5(hdev, "hw start failed\n");
		goto fail;
	}

	if (!wireless) {
		/* Note that if query fails it is not a hard failure */
		FUNC16(wacom);
	}

	/* touch only Bamboo doesn't support pen */
	if ((features->type == BAMBOO_TOUCH) &&
	    (features->device_type & WACOM_DEVICETYPE_PEN)) {
		FUNC1(&wacom->init_work);
		FUNC0(wacom);
		error = -ENODEV;
		goto fail_quirks;
	}

	if (features->device_type & WACOM_DEVICETYPE_WL_MONITOR)
		error = FUNC6(hdev);

	FUNC21(wacom_wac);
	FUNC3(&hdev->dev, wacom);

	return 0;

fail_quirks:
	FUNC8(hdev);
fail:
	FUNC18(wacom);
	return error;
}