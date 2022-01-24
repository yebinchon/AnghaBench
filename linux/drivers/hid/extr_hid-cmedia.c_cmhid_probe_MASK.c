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
struct hid_device_id {int dummy; } ;
struct hid_device {int /*<<< orphan*/  quirks; } ;
struct cmhid {struct hid_device* hid; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int HID_CONNECT_DEFAULT ; 
 int HID_CONNECT_HIDDEV_FORCE ; 
 int /*<<< orphan*/  HID_QUIRK_HIDINPUT_FORCE ; 
 int /*<<< orphan*/  FUNC0 (struct hid_device*,char*) ; 
 int FUNC1 (struct hid_device*,int) ; 
 int FUNC2 (struct hid_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct hid_device*,struct cmhid*) ; 
 int /*<<< orphan*/  FUNC4 (struct cmhid*) ; 
 struct cmhid* FUNC5 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(struct hid_device *hid, const struct hid_device_id *id)
{
	int ret;
	struct cmhid *cm;

	cm = FUNC5(sizeof(struct cmhid), GFP_KERNEL);
	if (!cm) {
		ret = -ENOMEM;
		goto allocfail;
	}

	cm->hid = hid;

	hid->quirks |= HID_QUIRK_HIDINPUT_FORCE;
	FUNC3(hid, cm);

	ret = FUNC2(hid);
	if (ret) {
		FUNC0(hid, "parse failed\n");
		goto fail;
	}

	ret = FUNC1(hid, HID_CONNECT_DEFAULT | HID_CONNECT_HIDDEV_FORCE);
	if (ret) {
		FUNC0(hid, "hw start failed\n");
		goto fail;
	}

	return 0;
fail:
	FUNC4(cm);
allocfail:
	return ret;
}