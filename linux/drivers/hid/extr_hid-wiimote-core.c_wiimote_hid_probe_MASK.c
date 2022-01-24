#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct wiimote_data {int /*<<< orphan*/  accel; int /*<<< orphan*/  ir; TYPE_1__* hdev; } ;
struct hid_device_id {int dummy; } ;
struct hid_device {int /*<<< orphan*/  dev; int /*<<< orphan*/  quirks; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  HID_CONNECT_HIDRAW ; 
 int /*<<< orphan*/  HID_QUIRK_NO_INIT_REPORTS ; 
 int /*<<< orphan*/  dev_attr_devtype ; 
 int /*<<< orphan*/  dev_attr_extension ; 
 int FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct hid_device*,char*) ; 
 int /*<<< orphan*/  FUNC3 (struct hid_device*) ; 
 int FUNC4 (struct hid_device*) ; 
 int FUNC5 (struct hid_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct hid_device*) ; 
 int /*<<< orphan*/  FUNC7 (struct hid_device*,char*) ; 
 int FUNC8 (struct hid_device*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct wiimote_data*) ; 
 int FUNC11 (struct wiimote_data*) ; 
 struct wiimote_data* FUNC12 (struct hid_device*) ; 
 int /*<<< orphan*/  FUNC13 (struct wiimote_data*) ; 
 int /*<<< orphan*/  FUNC14 (struct wiimote_data*) ; 

__attribute__((used)) static int FUNC15(struct hid_device *hdev,
				const struct hid_device_id *id)
{
	struct wiimote_data *wdata;
	int ret;

	hdev->quirks |= HID_QUIRK_NO_INIT_REPORTS;

	wdata = FUNC12(hdev);
	if (!wdata) {
		FUNC2(hdev, "Can't alloc device\n");
		return -ENOMEM;
	}

	ret = FUNC8(hdev);
	if (ret) {
		FUNC2(hdev, "HID parse failed\n");
		goto err;
	}

	ret = FUNC5(hdev, HID_CONNECT_HIDRAW);
	if (ret) {
		FUNC2(hdev, "HW start failed\n");
		goto err;
	}

	ret = FUNC4(hdev);
	if (ret) {
		FUNC2(hdev, "cannot start hardware I/O\n");
		goto err_stop;
	}

	ret = FUNC0(&hdev->dev, &dev_attr_extension);
	if (ret) {
		FUNC2(hdev, "cannot create sysfs attribute\n");
		goto err_close;
	}

	ret = FUNC0(&hdev->dev, &dev_attr_devtype);
	if (ret) {
		FUNC2(hdev, "cannot create sysfs attribute\n");
		goto err_ext;
	}

	ret = FUNC11(wdata);
	if (ret)
		goto err_free;

	FUNC7(hdev, "New device registered\n");

	/* schedule device detection */
	FUNC14(wdata);

	return 0;

err_free:
	FUNC13(wdata);
	return ret;

err_ext:
	FUNC1(&wdata->hdev->dev, &dev_attr_extension);
err_close:
	FUNC3(hdev);
err_stop:
	FUNC6(hdev);
err:
	FUNC9(wdata->ir);
	FUNC9(wdata->accel);
	FUNC10(wdata);
	return ret;
}