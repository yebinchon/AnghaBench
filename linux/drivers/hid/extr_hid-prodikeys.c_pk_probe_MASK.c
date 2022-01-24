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
struct usb_interface {TYPE_3__* cur_altsetting; } ;
struct pk_device {unsigned short ifnum; struct pk_device* pm; struct pk_device* pk; struct hid_device* hdev; } ;
struct pcmidi_snd {unsigned short ifnum; struct pcmidi_snd* pm; struct pcmidi_snd* pk; struct hid_device* hdev; } ;
struct hid_device_id {unsigned long driver_data; } ;
struct TYPE_4__ {int /*<<< orphan*/  parent; } ;
struct hid_device {int /*<<< orphan*/  quirks; TYPE_1__ dev; } ;
struct TYPE_5__ {unsigned short bInterfaceNumber; } ;
struct TYPE_6__ {TYPE_2__ desc; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  HID_CONNECT_DEFAULT ; 
 int /*<<< orphan*/  HID_QUIRK_NOGET ; 
 unsigned long PK_QUIRK_NOGET ; 
 int /*<<< orphan*/  FUNC0 (struct hid_device*,char*) ; 
 int FUNC1 (struct hid_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct hid_device*) ; 
 int FUNC3 (struct hid_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct hid_device*,struct pk_device*) ; 
 int /*<<< orphan*/  FUNC5 (struct pk_device*) ; 
 struct pk_device* FUNC6 (int,int /*<<< orphan*/ ) ; 
 int FUNC7 (struct pk_device*) ; 
 struct usb_interface* FUNC8 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC9(struct hid_device *hdev, const struct hid_device_id *id)
{
	int ret;
	struct usb_interface *intf = FUNC8(hdev->dev.parent);
	unsigned short ifnum = intf->cur_altsetting->desc.bInterfaceNumber;
	unsigned long quirks = id->driver_data;
	struct pk_device *pk;
	struct pcmidi_snd *pm = NULL;

	pk = FUNC6(sizeof(*pk), GFP_KERNEL);
	if (pk == NULL) {
		FUNC0(hdev, "can't alloc descriptor\n");
		return -ENOMEM;
	}

	pk->hdev = hdev;

	pm = FUNC6(sizeof(*pm), GFP_KERNEL);
	if (pm == NULL) {
		FUNC0(hdev, "can't alloc descriptor\n");
		ret = -ENOMEM;
		goto err_free_pk;
	}

	pm->pk = pk;
	pk->pm = pm;
	pm->ifnum = ifnum;

	FUNC4(hdev, pk);

	ret = FUNC3(hdev);
	if (ret) {
		FUNC0(hdev, "hid parse failed\n");
		goto err_free;
	}

	if (quirks & PK_QUIRK_NOGET) { /* hid_parse cleared all the quirks */
		hdev->quirks |= HID_QUIRK_NOGET;
	}

	ret = FUNC1(hdev, HID_CONNECT_DEFAULT);
	if (ret) {
		FUNC0(hdev, "hw start failed\n");
		goto err_free;
	}

	ret = FUNC7(pm);
	if (ret < 0)
		goto err_stop;

	return 0;
err_stop:
	FUNC2(hdev);
err_free:
	FUNC5(pm);
err_free_pk:
	FUNC5(pk);

	return ret;
}