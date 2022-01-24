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
struct usb_interface {int dummy; } ;
struct usb_device {int dummy; } ;
struct lua_device {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  parent; } ;
struct hid_device {TYPE_1__ dev; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (struct hid_device*,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct hid_device*,struct lua_device*) ; 
 struct usb_device* FUNC2 (struct usb_interface*) ; 
 int /*<<< orphan*/  FUNC3 (struct lua_device*) ; 
 struct lua_device* FUNC4 (int,int /*<<< orphan*/ ) ; 
 int FUNC5 (struct usb_interface*) ; 
 int FUNC6 (struct usb_device*,struct lua_device*) ; 
 struct usb_interface* FUNC7 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC8(struct hid_device *hdev)
{
	struct usb_interface *intf = FUNC7(hdev->dev.parent);
	struct usb_device *usb_dev = FUNC2(intf);
	struct lua_device *lua;
	int retval;

	lua = FUNC4(sizeof(*lua), GFP_KERNEL);
	if (!lua) {
		FUNC0(hdev, "can't alloc device descriptor\n");
		return -ENOMEM;
	}
	FUNC1(hdev, lua);

	retval = FUNC6(usb_dev, lua);
	if (retval) {
		FUNC0(hdev, "couldn't init struct lua_device\n");
		goto exit;
	}

	retval = FUNC5(intf);
	if (retval) {
		FUNC0(hdev, "cannot create sysfs files\n");
		goto exit;
	}

	return 0;
exit:
	FUNC3(lua);
	return retval;
}