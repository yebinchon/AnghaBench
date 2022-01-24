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
struct lua_device {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  parent; } ;
struct hid_device {TYPE_1__ dev; } ;

/* Variables and functions */
 struct lua_device* FUNC0 (struct hid_device*) ; 
 int /*<<< orphan*/  FUNC1 (struct lua_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct usb_interface*) ; 
 struct usb_interface* FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(struct hid_device *hdev)
{
	struct usb_interface *intf = FUNC3(hdev->dev.parent);
	struct lua_device *lua;

	FUNC2(intf);

	lua = FUNC0(hdev);
	FUNC1(lua);
}