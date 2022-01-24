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
struct ms_data {unsigned long quirks; } ;
struct hid_device_id {unsigned long driver_data; } ;
struct hid_device {int /*<<< orphan*/  quirks; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int HID_CONNECT_DEFAULT ; 
 int HID_CONNECT_HIDINPUT_FORCE ; 
 int /*<<< orphan*/  HID_QUIRK_INPUT_PER_APP ; 
 int /*<<< orphan*/  HID_QUIRK_NOGET ; 
 unsigned long MS_HIDINPUT ; 
 unsigned long MS_NOGET ; 
 unsigned long MS_SURFACE_DIAL ; 
 struct ms_data* FUNC0 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct hid_device*,char*) ; 
 int FUNC2 (struct hid_device*,int) ; 
 int FUNC3 (struct hid_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct hid_device*,struct ms_data*) ; 
 int FUNC5 (struct hid_device*) ; 

__attribute__((used)) static int FUNC6(struct hid_device *hdev, const struct hid_device_id *id)
{
	unsigned long quirks = id->driver_data;
	struct ms_data *ms;
	int ret;

	ms = FUNC0(&hdev->dev, sizeof(*ms), GFP_KERNEL);
	if (ms == NULL)
		return -ENOMEM;

	ms->quirks = quirks;

	FUNC4(hdev, ms);

	if (quirks & MS_NOGET)
		hdev->quirks |= HID_QUIRK_NOGET;

	if (quirks & MS_SURFACE_DIAL)
		hdev->quirks |= HID_QUIRK_INPUT_PER_APP;

	ret = FUNC3(hdev);
	if (ret) {
		FUNC1(hdev, "parse failed\n");
		goto err_free;
	}

	ret = FUNC2(hdev, HID_CONNECT_DEFAULT | ((quirks & MS_HIDINPUT) ?
				HID_CONNECT_HIDINPUT_FORCE : 0));
	if (ret) {
		FUNC1(hdev, "hw start failed\n");
		goto err_free;
	}

	ret = FUNC5(hdev);
	if (ret)
		FUNC1(hdev, "could not initialize ff, continuing anyway");

	return 0;
err_free:
	return ret;
}