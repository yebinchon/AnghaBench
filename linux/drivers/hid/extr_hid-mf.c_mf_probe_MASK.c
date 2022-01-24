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
struct hid_device_id {int /*<<< orphan*/  driver_data; } ;
struct hid_device {int /*<<< orphan*/  quirks; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int HID_CONNECT_DEFAULT ; 
 int HID_CONNECT_FF ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct hid_device*,char*) ; 
 int FUNC2 (struct hid_device*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct hid_device*) ; 
 int FUNC4 (struct hid_device*) ; 
 int FUNC5 (struct hid_device*) ; 

__attribute__((used)) static int FUNC6(struct hid_device *hid, const struct hid_device_id *id)
{
	int error;

	FUNC0(&hid->dev, "Mayflash HID hardware probe...\n");

	/* Apply quirks as needed */
	hid->quirks |= id->driver_data;

	error = FUNC4(hid);
	if (error) {
		FUNC1(hid, "HID parse failed.\n");
		return error;
	}

	error = FUNC2(hid, HID_CONNECT_DEFAULT & ~HID_CONNECT_FF);
	if (error) {
		FUNC1(hid, "HID hw start failed\n");
		return error;
	}

	error = FUNC5(hid);
	if (error) {
		FUNC1(hid, "Force feedback init failed.\n");
		FUNC3(hid);
		return error;
	}

	return 0;
}