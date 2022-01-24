#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
struct usb_interface {TYPE_3__* cur_altsetting; } ;
struct isku_device {scalar_t__ roccat_claimed; } ;
struct hid_report {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  parent; } ;
struct hid_device {TYPE_1__ dev; } ;
struct TYPE_5__ {scalar_t__ bInterfaceProtocol; } ;
struct TYPE_6__ {TYPE_2__ desc; } ;

/* Variables and functions */
 scalar_t__ ISKU_USB_INTERFACE_PROTOCOL ; 
 struct isku_device* FUNC0 (struct hid_device*) ; 
 int /*<<< orphan*/  FUNC1 (struct isku_device*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct isku_device*,int /*<<< orphan*/ *) ; 
 struct usb_interface* FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct hid_device *hdev,
		struct hid_report *report, u8 *data, int size)
{
	struct usb_interface *intf = FUNC3(hdev->dev.parent);
	struct isku_device *isku = FUNC0(hdev);

	if (intf->cur_altsetting->desc.bInterfaceProtocol
			!= ISKU_USB_INTERFACE_PROTOCOL)
		return 0;

	if (isku == NULL)
		return 0;

	FUNC1(isku, data);

	if (isku->roccat_claimed)
		FUNC2(isku, data);

	return 0;
}